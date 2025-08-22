import argparse
import os
import subprocess
import json
from datetime import datetime
import shutil


def python_to_lua_string(data, indent=0):
    indent_str, next_indent_str = "    " * indent, "    " * (indent + 1)
    if data is None:
        return "nil"
    if isinstance(data, bool):
        return str(data).lower()
    if isinstance(data, (int, float)):
        return str(data)
    if isinstance(data, str):
        return json.dumps(data, ensure_ascii=False)
    if isinstance(data, list):
        items = [
            f"{next_indent_str}{python_to_lua_string(item, indent + 1)}" for item in data]
        return f"{{\n" + ",\n".join(items) + f"\n{indent_str}}}"
    if isinstance(data, dict):
        items = []
        for key, value in data.items():
            key_str = json.dumps(key, ensure_ascii=False) if isinstance(
                key, str) else str(key)
            value_str = python_to_lua_string(value, indent + 1)
            items.append(f'{next_indent_str}[{key_str}] = {value_str}')
        return f"{{\n" + ",\n".join(items) + f"\n{indent_str}}}"
    raise TypeError(f"Unsupported type for Lua conversion: {type(data)}")


def write_lua_module(output_path, data):
    print(f"Generating Lua module: {os.path.basename(output_path)}")
    try:
        lua_string = f"return {python_to_lua_string(data)}"
        with open(output_path, 'w', encoding='utf-8') as f:
            f.write(lua_string)
        print(f"Successfully created {os.path.basename(output_path)}")
    except Exception as e:
        print(
            f"ERROR: Failed to create Lua module at {output_path}. Reason: {e}")


def run_decryption(input_dir, decrypted_dir):
    print("--- Step 1: Running Decryption ---")
    os.makedirs(decrypted_dir, exist_ok=True)
    script_path = os.path.join(os.path.dirname(
        os.path.abspath(__file__)), 'smaster.py')
    if not os.path.exists(script_path):
        print(f"ERROR: smaster.py not found at {script_path}")
        return False
    try:
        result = subprocess.run(['python', script_path, input_dir, decrypted_dir],
                                check=True, capture_output=True, text=True, encoding='utf-8')
        print(result.stdout)
        if result.stderr:
            print("Decryption script stderr:\n", result.stderr)
        print("--- Decryption completed successfully. ---")
        return True
    except (subprocess.CalledProcessError, FileNotFoundError) as e:
        print(f"ERROR: Decryption script failed. Reason: {e}")
        return False


def run_script(script_name, decrypted_dir, output_file):
    print(f"\n--- Running {script_name} ---")
    original_script_path = os.path.join(
        os.path.dirname(os.path.abspath(__file__)), script_name)
    temp_script_path = os.path.join(os.path.dirname(
        os.path.abspath(__file__)), f"temp_{script_name}")
    if not os.path.exists(original_script_path):
        print(f"ERROR: {script_name} not found at {original_script_path}")
        return False
    with open(original_script_path, 'r', encoding='utf-8') as f_in, open(temp_script_path, 'w', encoding='utf-8') as f_out:
        for line in f_in:
            if line.strip().startswith("INPUT_DIRECTORY ="):
                f_out.write(f"    INPUT_DIRECTORY = r'{decrypted_dir}'\n")
            elif line.strip().startswith("OUTPUT_FILE ="):
                f_out.write(f"    OUTPUT_FILE = r'{output_file}'\n")
            else:
                f_out.write(line)
    try:
        result = subprocess.run(['python', temp_script_path], check=True,
                                capture_output=True, text=True, encoding='utf-8')
        print(result.stdout)
        if result.stderr:
            print(f"{script_name} stderr:\n", result.stderr)
        print(f"--- {script_name} completed successfully. ---")
        return True
    except (subprocess.CalledProcessError, FileNotFoundError) as e:
        print(f"ERROR: {script_name} failed. Reason: {e}")
        return False
    finally:
        if os.path.exists(temp_script_path):
            os.remove(temp_script_path)


def generate_diff(old_data, new_data, ignored_keys=None):
    diffs = []
    ignored_keys = (ignored_keys or set()) | {
        'resolved_enchant1Skill', 'resolved_enchant2Skill'}
    all_keys = set(old_data.keys()) | set(new_data.keys())

    for key in sorted(list(all_keys - ignored_keys)):
        old_value, new_value = old_data.get(key), new_data.get(key)
        if old_value != new_value:
            if key.startswith('resolved_') or key == 'drop_rules':
                diffs.append(f"  - Drops changed for '{key}'")
            elif key == 'materials' and isinstance(old_value, list) and isinstance(new_value, list):
                old_mats, new_mats = {m['itemId']: m for m in old_value}, {
                    m['itemId']: m for m in new_value}
                for mat_key in set(old_mats.keys()) | set(new_mats.keys()):
                    old_mat, new_mat = old_mats.get(
                        mat_key), new_mats.get(mat_key)
                    mat_name = (new_mat or old_mat).get(
                        'itemName_EN', f"Item {mat_key}")
                    if old_mat is None:
                        diffs.append(
                            f"  - Material Added: '{mat_name}' (Amount: {new_mat.get('amount')})")
                    elif new_mat is None:
                        diffs.append(f"  - Material Removed: '{mat_name}'")
                    elif old_mat != new_mat:
                        if old_mat.get('amount') != new_mat.get('amount'):
                            diffs.append(
                                f"  - Material '{mat_name}' amount changed from {old_mat.get('amount')} to {new_mat.get('amount')}")
            elif key == 'source_items' and isinstance(old_value, list) and isinstance(new_value, list):
                old_sources, new_sources = {s['id']: s for s in old_value}, {
                    s['id']: s for s in new_value}
                for source_key in set(old_sources.keys()) | set(new_sources.keys()):
                    old_source, new_source = old_sources.get(
                        source_key), new_sources.get(source_key)
                    item_name = (new_source or old_source).get(
                        'itemName_EN', f"Item with enchant ID {source_key}")
                    if old_source is None:
                        diffs.append(f"  - Source Item Added: '{item_name}'")
                    elif new_source is None:
                        diffs.append(f"  - Source Item Removed: '{item_name}'")
            else:
                diffs.append(
                    f"  - Field '{key}' changed from '{old_value}' to '{new_value}'")

    for i in range(1, 3):
        old_skill = old_data.get(f'resolved_enchant{i}Skill', {})
        new_skill = new_data.get(f'resolved_enchant{i}Skill', {})
        if old_skill != new_skill:
            old_name = old_skill.get('name_EN', 'None')
            new_name = new_skill.get('name_EN', 'None')
            diffs.append(
                f"  - Enchant Skill {i} changed from '{old_name}' to '{new_name}'")

    return diffs


def seed_history(initial_history_path, id_key_map):
    print(f"INFO: Seeding initial history from '{initial_history_path}'...")
    try:
        with open(initial_history_path, 'r', encoding='utf-8') as f:
            resolver_data = json.load(f)
        seeded_history, initial_version = {key: {}
                                           for key in id_key_map.keys()}, "initial_seed"
        for data_type, id_key in id_key_map.items():
            if data_type not in resolver_data:
                continue
            for item in resolver_data[data_type]:
                if item_id := str(item.get(id_key)):
                    seeded_history[data_type][item_id] = {
                        initial_version: item}
        print("INFO: Seeding successful.")
        return seeded_history
    except (FileNotFoundError, json.JSONDecodeError) as e:
        print(
            f"WARNING: Could not read or parse initial history file. Skipping. Reason: {e}")
        return None


def get_version_from_user(historical_files):
    existing_versions = set()
    for file_path in historical_files:
        if os.path.exists(file_path):
            with open(file_path, 'r', encoding='utf-8') as f:
                data = json.load(f)
            for top_level_key in data.values():
                for item_history in top_level_key.values():
                    existing_versions.update(item_history.keys())
    while True:
        version_string = input(
            "\nEnter a version identifier for this data set (e.g., 'v1.2.3'): ")
        if not version_string:
            print("Version identifier cannot be empty.")
        elif version_string in existing_versions:
            if input(f"WARNING: Version '{version_string}' already exists. Overwrite? [y/N] ").lower().strip() == 'y':
                return version_string
            else:
                print(
                    "Overwrite cancelled. Please enter a different version identifier.")
        else:
            return version_string


def update_history_file(resolved_data, historical_data, version_string, id_key_map, report_lines):
    has_changes, is_first_run = False, not any(historical_data.values())
    for data_type, id_key in id_key_map.items():
        if data_type not in resolved_data or not resolved_data[data_type]:
            continue

        items_to_process = resolved_data[data_type]
        if data_type == 'enchant_skills':
            items_to_process = sorted(
                items_to_process, key=lambda x: x.get('id', 0))

        type_name = data_type.replace("_", " ").title()
        for item in items_to_process:
            if not (item_id := str(item.get(id_key))):
                continue
            item_history = historical_data[data_type].get(item_id, {})

            item_name_raw = (item.get('name_EN') or item.get('configName_EN') or
                             item.get('objectName_EN') or item.get('resultItemName_EN') or
                             item.get('seedItemName_EN') or item.get('creatureName_EN') or
                             item.get('nameForTool') or item.get('itemName_EN', 'Unknown'))

            item_name_for_report = item_name_raw.replace(
                '\n', ' ') if isinstance(item_name_raw, str) else item_name_raw

            if is_first_run or not item_history:
                print(f"  - New {type_name} item found: ID {item_id}")
                report_lines.append(
                    f"* {type_name} Added: {item_name_for_report} (ID: {item_id})")
                historical_data[data_type][item_id] = {version_string: item}
                has_changes = True
            else:
                existing_versions = sorted(
                    [v for v in item_history.keys() if v != version_string])
                latest_item = item_history[existing_versions[-1]
                                           ] if existing_versions else {}
                if diffs := generate_diff(latest_item, item):
                    print(
                        f"  - Changes detected for {type_name} item ID {item_id}")
                    report_lines.append(
                        f"\n* {type_name} Updated: {item_name_for_report} (ID: {item_id})")
                    report_lines.extend(diffs)
                    historical_data[data_type].setdefault(
                        item_id, {})[version_string] = item
                    has_changes = True
    return has_changes


def main():
    parser = argparse.ArgumentParser(
        description="A full pipeline to decrypt, resolve, and version game data.", formatter_class=argparse.RawTextHelpFormatter)
    parser.add_argument(
        "input_dir", help="Path to the directory containing source .dat files.")
    parser.add_argument(
        "output_dir", help="Path to the final output directory for historical data and reports.")
    parser.add_argument("--working_dir", default="working_temp",
                        help="Temporary directory for intermediate files.")
    parser.add_argument("--initial_recipe_history",
                        help="Path to a resolver.py output file to seed recipe history.")
    parser.add_argument("--initial_droptable_history",
                        help="Path to a droptable_resolver.py output file to seed drop table history.")
    parser.add_argument("--initial_enchant_history",
                        help="Path to an enchant_resolver.py output file to seed all enchant history.")
    args = parser.parse_args()

    os.makedirs(args.output_dir, exist_ok=True)
    os.makedirs(args.working_dir, exist_ok=True)
    decrypted_dir = os.path.join(args.working_dir, 'decrypted')

    resolved_recipes_file = os.path.join(
        args.working_dir, 'resolved_recipes.json')
    resolved_droptables_file = os.path.join(
        args.working_dir, 'resolved_droptables.json')
    resolved_enchants_file = os.path.join(
        args.working_dir, 'resolved_enchants.json')

    historical_recipes_file = os.path.join(
        args.output_dir, 'historical_recipes.json')
    historical_droptables_file = os.path.join(
        args.output_dir, 'historical_droptables.json')
    historical_enchant_ingredients_file = os.path.join(
        args.output_dir, 'historical_enchant_ingredients.json')
    historical_enchant_skills_file = os.path.join(
        args.output_dir, 'historical_enchant_skills.json')

    lua_recipes_file = os.path.join(args.output_dir, 'historical_recipes.lua')
    lua_droptables_file = os.path.join(
        args.output_dir, 'historical_droptables.lua')
    lua_enchant_ingredients_file = os.path.join(
        args.output_dir, 'historical_enchant_ingredients.lua')
    lua_enchant_skills_file = os.path.join(
        args.output_dir, 'historical_enchant_skills.lua')

    if not run_decryption(args.input_dir, decrypted_dir) or \
       not run_script('resolver.py', decrypted_dir, resolved_recipes_file) or \
       not run_script('droptable_resolver.py', decrypted_dir, resolved_droptables_file) or \
       not run_script('enchant_resolver.py', decrypted_dir, resolved_enchants_file):
        return

    version_string = get_version_from_user(
        [historical_recipes_file, historical_droptables_file, historical_enchant_ingredients_file, historical_enchant_skills_file])

    print("\n--- Updating Recipe History ---")
    recipe_id_map = {"crafting": "craftRecipeId",
                     "smelting": "pid", "cultivation": "id"}
    historical_recipes = json.load(open(historical_recipes_file, 'r', encoding='utf-8')) if os.path.exists(historical_recipes_file) else (seed_history(
        args.initial_recipe_history, recipe_id_map) if args.initial_recipe_history and os.path.exists(args.initial_recipe_history) else {"crafting": {}, "smelting": {}, "cultivation": {}})
    with open(resolved_recipes_file, 'r', encoding='utf-8') as f:
        resolved_recipes = json.load(f)
    recipe_report_lines = [
        f"Recipe Change Report for version: {version_string}\n"]
    if update_history_file(resolved_recipes, historical_recipes, version_string, recipe_id_map, recipe_report_lines):
        with open(os.path.join(args.output_dir, f'report_recipes_{version_string}.txt'), 'w', encoding='utf-8') as f:
            f.write('\n'.join(recipe_report_lines))
        print("Recipe report generated.")
    else:
        print("No recipe changes detected.")
    with open(historical_recipes_file, 'w', encoding='utf-8') as f:
        json.dump(historical_recipes, f, indent=4, ensure_ascii=False)
    write_lua_module(lua_recipes_file, historical_recipes)

    print("\n--- Updating Drop Table History ---")
    droptable_id_map = {"breakable_objects": "objectId", "harvestable_objects": "nameForTool",
                        "creature_drops": "creatureId", "nest_objects": "nestObjectId"}
    historical_droptables = json.load(open(historical_droptables_file, 'r', encoding='utf-8')) if os.path.exists(historical_droptables_file) else (seed_history(
        args.initial_droptable_history, droptable_id_map) if args.initial_droptable_history and os.path.exists(args.initial_droptable_history) else {key: {} for key in droptable_id_map.keys()})
    with open(resolved_droptables_file, 'r', encoding='utf-8') as f:
        resolved_droptables = json.load(f)
    droptable_report_lines = [
        f"Drop Table Change Report for version: {version_string}\n"]
    if update_history_file(resolved_droptables, historical_droptables, version_string, droptable_id_map, droptable_report_lines):
        with open(os.path.join(args.output_dir, f'report_droptables_{version_string}.txt'), 'w', encoding='utf-8') as f:
            f.write('\n'.join(droptable_report_lines))
        print("Drop table report generated.")
    else:
        print("No drop table changes detected.")
    with open(historical_droptables_file, 'w', encoding='utf-8') as f:
        json.dump(historical_droptables, f, indent=4, ensure_ascii=False)
    write_lua_module(lua_droptables_file, historical_droptables)

    with open(resolved_enchants_file, 'r', encoding='utf-8') as f:
        resolved_enchants = json.load(f)

    print("\n--- Updating Enchant Ingredient History ---")
    enchant_ing_id_map = {"enchant_ingredients": "id"}
    historical_ingredients = json.load(open(historical_enchant_ingredients_file, 'r', encoding='utf-8')) if os.path.exists(historical_enchant_ingredients_file) else (
        seed_history(args.initial_enchant_history, enchant_ing_id_map) if args.initial_enchant_history and os.path.exists(args.initial_enchant_history) else {"enchant_ingredients": {}})
    ing_report_lines = [
        f"Enchant Ingredient Change Report for version: {version_string}\n"]
    if update_history_file({"enchant_ingredients": resolved_enchants.get("enchant_ingredients", [])}, historical_ingredients, version_string, enchant_ing_id_map, ing_report_lines):
        with open(os.path.join(args.output_dir, f'report_enchant_ingredients_{version_string}.txt'), 'w', encoding='utf-8') as f:
            f.write('\n'.join(ing_report_lines))
        print("Enchant ingredient report generated.")
    else:
        print("No enchant ingredient changes detected.")
    with open(historical_enchant_ingredients_file, 'w', encoding='utf-8') as f:
        json.dump(historical_ingredients, f, indent=4, ensure_ascii=False)
    write_lua_module(lua_enchant_ingredients_file, historical_ingredients)

    print("\n--- Updating Enchant Skill History ---")
    enchant_skill_id_map = {"enchant_skills": "id"}
    historical_skills = json.load(open(historical_enchant_skills_file, 'r', encoding='utf-8')) if os.path.exists(historical_enchant_skills_file) else (seed_history(
        args.initial_enchant_history, enchant_skill_id_map) if args.initial_enchant_history and os.path.exists(args.initial_enchant_history) else {"enchant_skills": {}})
    skill_report_lines = [
        f"Enchant Skill Change Report for version: {version_string}\n"]
    if update_history_file({"enchant_skills": resolved_enchants.get("enchant_skills", [])}, historical_skills, version_string, enchant_skill_id_map, skill_report_lines):
        with open(os.path.join(args.output_dir, f'report_enchant_skills_{version_string}.txt'), 'w', encoding='utf-8') as f:
            f.write('\n'.join(skill_report_lines))
        print("Enchant skill report generated.")
    else:
        print("No enchant skill changes detected.")
    with open(historical_enchant_skills_file, 'w', encoding='utf-8') as f:
        json.dump(historical_skills, f, indent=4, ensure_ascii=False)
    write_lua_module(lua_enchant_skills_file, historical_skills)

    print("\n--- Pipeline finished successfully. ---")


if __name__ == '__main__':
    main()
