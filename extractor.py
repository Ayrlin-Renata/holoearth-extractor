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
            if key in ['drop_rules', 'spawners', 'reaction_items']:
                diffs.append(f"  - Field '{key}' has changed.")
            elif key == 'element_resistances' and isinstance(old_value, list) and isinstance(new_value, list):
                old_res = {r['element']: r['resistance'] for r in old_value}
                new_res = {r['element']: r['resistance'] for r in new_value}
                for element in sorted(list(set(old_res.keys()) | set(new_res.keys()))):
                    if old_res.get(element) != new_res.get(element):
                        diffs.append(
                            f"  - Element {element} resistance changed from {old_res.get(element, 'N/A')} to {new_res.get(element, 'N/A')}")
            elif key == 'category' and isinstance(old_value, dict) and isinstance(new_value, dict):
                if old_value.get('name_EN') != new_value.get('name_EN'):
                    diffs.append(
                        f"  - Category changed from '{old_value.get('name_EN')}' to '{new_value.get('name_EN')}'")
            elif key == 'extra_data' and isinstance(old_value, list) and isinstance(new_value, list):
                old_extra = {d['source_file']: d['data'] for d in old_value}
                new_extra = {d['source_file']: d['data'] for d in new_value}
                for source_file in set(old_extra.keys()) | set(new_extra.keys()):
                    if old_extra.get(source_file) != new_extra.get(source_file):
                        diffs.append(
                            f"  - Extra data from '{source_file}' has changed.")
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
            try:
                with open(file_path, 'r', encoding='utf-8') as f:
                    data = json.load(f)

                # Handle both flat and nested historical data structures
                if any(isinstance(v, dict) and any(isinstance(sv, dict) for sv in v.values()) for v in data.values()):  # Nested check
                    for top_level_key in data.values():
                        for subgroup in top_level_key.values():
                            for item_history in subgroup.values():
                                existing_versions.update(item_history.keys())
                else:  # Flat check
                    for top_level_key in data.values():
                        for item_history in top_level_key.values():
                            existing_versions.update(item_history.keys())
            except (json.JSONDecodeError, AttributeError):
                print(
                    f"Warning: Could not parse existing versions from {file_path}. Skipping.")

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
                             item.get('nameForTool') or item.get('itemName_EN') or 
                             item.get('localize_EN') or item.get('name_EN') or item.get('k') or item.get('key') or item.get('gender') or item.get('localizeKey', 'Unknown'))

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
    parser.add_argument("--resolver", default="all", choices=['all', 'recipes', 'droptables', 'enchants', 'items', 'creatures', 'avatar'],
                        help="Specify which resolver pipeline to run.")

    # Arguments for seeding history
    parser.add_argument("--initial_recipe_history",
                        help="Path to a resolver.py output file to seed recipe history.")
    parser.add_argument("--initial_droptable_history",
                        help="Path to a droptable_resolver.py output file to seed drop table history.")
    parser.add_argument("--initial_enchant_history",
                        help="Path to an enchant_resolver.py output file to seed all enchant history.")
    parser.add_argument("--initial_item_history",
                        help="Path to an item_resolver.py output file to seed item history.")
    parser.add_argument("--initial_creature_history",
                        help="Path to a creature_resolver.py output file to seed creature history.")
    parser.add_argument("--initial_avatar_history",
                        help="Path to an avatar_resolver.py output file to seed avatar history.")
    args = parser.parse_args()

    os.makedirs(args.output_dir, exist_ok=True)
    os.makedirs(args.working_dir, exist_ok=True)
    decrypted_dir = os.path.join(args.working_dir, 'decrypted')

    # Define file paths for all resolvers
    resolved_recipes_file = os.path.join(
        args.working_dir, 'resolved_recipes.json')
    resolved_droptables_file = os.path.join(
        args.working_dir, 'resolved_droptables.json')
    resolved_enchants_file = os.path.join(
        args.working_dir, 'resolved_enchants.json')
    resolved_items_file = os.path.join(args.working_dir, 'resolved_items.json')
    resolved_creatures_file = os.path.join(
        args.working_dir, 'resolved_creatures.json')
    resolved_avatars_file = os.path.join(
        args.working_dir, 'resolved_avatars.json')

    historical_files = {
        'recipes': os.path.join(args.output_dir, 'historical_recipes.json'),
        'droptables': os.path.join(args.output_dir, 'historical_droptables.json'),
        'enchant_ingredients': os.path.join(args.output_dir, 'historical_enchant_ingredients.json'),
        'enchant_skills': os.path.join(args.output_dir, 'historical_enchant_skills.json'),
        'items': os.path.join(args.output_dir, 'historical_items.json'),
        'creatures': os.path.join(args.output_dir, 'historical_creatures.json'),
        'avatar': os.path.join(args.output_dir, 'historical_avatars.json')
    }

    lua_files = {
        'recipes': os.path.join(args.output_dir, 'historical_recipes.lua'),
        'droptables': os.path.join(args.output_dir, 'historical_droptables.lua'),
        'enchant_ingredients': os.path.join(args.output_dir, 'historical_enchant_ingredients.lua'),
        'enchant_skills': os.path.join(args.output_dir, 'historical_enchant_skills.lua'),
        'items': os.path.join(args.output_dir, 'historical_items.lua'),
        'creatures': os.path.join(args.output_dir, 'historical_creatures.lua'),
        'avatar': os.path.join(args.output_dir, 'historical_avatars.lua')
    }

    # --- Step 1: Run Decryption and Resolvers ---
    run_all = args.resolver == 'all'
    if run_all and not run_decryption(args.input_dir, decrypted_dir):
        return
    if args.resolver in ['all', 'recipes'] and not run_script('resolver.py', decrypted_dir, resolved_recipes_file):
        return
    if args.resolver in ['all', 'droptables'] and not run_script('droptable_resolver.py', decrypted_dir, resolved_droptables_file):
        return
    if args.resolver in ['all', 'enchants'] and not run_script('enchant_resolver.py', decrypted_dir, resolved_enchants_file):
        return
    if args.resolver in ['all', 'items'] and not run_script('item_resolver.py', decrypted_dir, resolved_items_file):
        return
    if args.resolver in ['all', 'creatures'] and not run_script('creature_resolver.py', decrypted_dir, resolved_creatures_file):
        return
    if args.resolver in ['all', 'avatar'] and not run_script('avatar_resolver.py', decrypted_dir, resolved_avatars_file):
        return

    # --- Step 2: Get Version and Update History ---
    version_string = get_version_from_user(list(historical_files.values()))
    # --- Process all data types ---

    # Process Recipes
    print("\n--- Updating Recipe History ---")
    recipe_id_map = {"crafting": "craftRecipeId",
                     "smelting": "pid", "cultivation": "id"}
    historical_recipes = json.load(open(historical_files['recipes'], 'r', encoding='utf-8')) if os.path.exists(historical_files['recipes']) else (seed_history(
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
    with open(historical_files['recipes'], 'w', encoding='utf-8') as f:
        json.dump(historical_recipes, f, indent=4, ensure_ascii=False)
    write_lua_module(lua_files['recipes'], historical_recipes)

    # Process Drop Tables
    print("\n--- Updating Drop Table History ---")
    droptable_id_map = {"breakable_objects": "objectId", "harvestable_objects": "nameForTool",
                        "creature_drops": "creatureId", "nest_objects": "nestObjectId"}
    historical_droptables = json.load(open(historical_files['droptables'], 'r', encoding='utf-8')) if os.path.exists(historical_files['droptables']) else (seed_history(
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
    with open(historical_files['droptables'], 'w', encoding='utf-8') as f:
        json.dump(historical_droptables, f, indent=4, ensure_ascii=False)
    write_lua_module(lua_files['droptables'], historical_droptables)

    # Process Enchants
    with open(resolved_enchants_file, 'r', encoding='utf-8') as f:
        resolved_enchants = json.load(f)
    print("\n--- Updating Enchant Ingredient History ---")
    enchant_ing_id_map = {"enchant_ingredients": "id"}
    historical_ingredients = json.load(open(historical_files['enchant_ingredients'], 'r', encoding='utf-8')) if os.path.exists(historical_files['enchant_ingredients']) else (
        seed_history(args.initial_enchant_history, enchant_ing_id_map) if args.initial_enchant_history and os.path.exists(args.initial_enchant_history) else {"enchant_ingredients": {}})
    ing_report_lines = [
        f"Enchant Ingredient Change Report for version: {version_string}\n"]
    if update_history_file({"enchant_ingredients": resolved_enchants.get("enchant_ingredients", [])}, historical_ingredients, version_string, enchant_ing_id_map, ing_report_lines):
        with open(os.path.join(args.output_dir, f'report_enchant_ingredients_{version_string}.txt'), 'w', encoding='utf-8') as f:
            f.write('\n'.join(ing_report_lines))
        print("Enchant ingredient report generated.")
    else:
        print("No enchant ingredient changes detected.")
    with open(historical_files['enchant_ingredients'], 'w', encoding='utf-8') as f:
        json.dump(historical_ingredients, f, indent=4, ensure_ascii=False)
    write_lua_module(lua_files['enchant_ingredients'], historical_ingredients)

    print("\n--- Updating Enchant Skill History ---")
    enchant_skill_id_map = {"enchant_skills": "id"}
    historical_skills = json.load(open(historical_files['enchant_skills'], 'r', encoding='utf-8')) if os.path.exists(historical_files['enchant_skills']) else (seed_history(
        args.initial_enchant_history, enchant_skill_id_map) if args.initial_enchant_history and os.path.exists(args.initial_enchant_history) else {"enchant_skills": {}})
    skill_report_lines = [
        f"Enchant Skill Change Report for version: {version_string}\n"]
    if update_history_file({"enchant_skills": resolved_enchants.get("enchant_skills", [])}, historical_skills, version_string, enchant_skill_id_map, skill_report_lines):
        with open(os.path.join(args.output_dir, f'report_enchant_skills_{version_string}.txt'), 'w', encoding='utf-8') as f:
            f.write('\n'.join(skill_report_lines))
        print("Enchant skill report generated.")
    else:
        print("No enchant skill changes detected.")
    with open(historical_files['enchant_skills'], 'w', encoding='utf-8') as f:
        json.dump(historical_skills, f, indent=4, ensure_ascii=False)
    write_lua_module(lua_files['enchant_skills'], historical_skills)

    # Process Items
    print("\n--- Updating Item History ---")
    item_id_map = {"items": "itemId"}
    historical_items = json.load(open(historical_files['items'], 'r', encoding='utf-8')) if os.path.exists(historical_files['items']) else (seed_history(
        args.initial_item_history, item_id_map) if args.initial_item_history and os.path.exists(args.initial_item_history) else {"items": {}})
    with open(resolved_items_file, 'r', encoding='utf-8') as f:
        resolved_items = json.load(f)
    item_report_lines = [f"Item Change Report for version: {version_string}\n"]
    if update_history_file(resolved_items, historical_items, version_string, item_id_map, item_report_lines):
        with open(os.path.join(args.output_dir, f'report_items_{version_string}.txt'), 'w', encoding='utf-8') as f:
            f.write('\n'.join(item_report_lines))
        print("Item report generated.")
    else:
        print("No item changes detected.")
    with open(historical_files['items'], 'w', encoding='utf-8') as f:
        json.dump(historical_items, f, indent=4, ensure_ascii=False)
    write_lua_module(lua_files['items'], historical_items)

    # NEW: Process Creatures
    print("\n--- Updating Creature History ---")
    creature_id_map = {"creatures": "creatureId"}
    historical_creatures = json.load(open(historical_files['creatures'], 'r', encoding='utf-8')) if os.path.exists(historical_files['creatures']) else (seed_history(
        args.initial_creature_history, creature_id_map) if args.initial_creature_history and os.path.exists(args.initial_creature_history) else {"creatures": {}})
    with open(resolved_creatures_file, 'r', encoding='utf-8') as f:
        resolved_creatures = json.load(f)
    creature_report_lines = [
        f"Creature Change Report for version: {version_string}\n"]
    if update_history_file(resolved_creatures, historical_creatures, version_string, creature_id_map, creature_report_lines):
        with open(os.path.join(args.output_dir, f'report_creatures_{version_string}.txt'), 'w', encoding='utf-8') as f:
            f.write('\n'.join(creature_report_lines))
        print("Creature report generated.")
    else:
        print("No creature changes detected.")
    with open(historical_files['creatures'], 'w', encoding='utf-8') as f:
        json.dump(historical_creatures, f, indent=4, ensure_ascii=False)
    write_lua_module(lua_files['creatures'], historical_creatures)

    # --- Process Avatars ---
    if args.resolver in ['all', 'avatar']:
        print("\n--- Updating Avatar History ---")
        # Load resolved data (nested structure)
        with open(resolved_avatars_file, 'r', encoding='utf-8') as f:
            resolved_avatars = json.load(f)

        # Load historical data or initialize with the correct nested structure
        if os.path.exists(historical_files['avatar']):
            with open(historical_files['avatar'], 'r', encoding='utf-8') as f:
                historical_avatars = json.load(f)
        else:
            # Note: Seeding for this complex, nested structure would require a custom seed function.
            # For now, we initialize an empty structure.
            historical_avatars = {cat: {} for cat in resolved_avatars.keys()}

        report_lines = [
            f"Avatar Change Report for version: {version_string}\n"]
        overall_changes = False

        # Iterate through the nested structure and update history for each subgroup
        for category, subgroups in resolved_avatars.items():
            if category == "avatarFashionItemSets":
                # This is a list, not a dict of items. Handle separately if needed.
                # For now, we'll treat it as one blob.
                # A more robust solution would version each set by its sortKey.
                continue

            for subgroup_name, items in subgroups.items():
                id_key = 'id'  # Most avatar items use 'id'

                # Prepare single-item dictionaries to pass to the existing update function
                resolved_subgroup_dict = {subgroup_name: items}
                historical_subgroup_dict = {subgroup_name: historical_avatars.get(
                    category, {}).get(subgroup_name, {})}
                subgroup_id_map = {subgroup_name: id_key}

                if update_history_file(resolved_subgroup_dict, historical_subgroup_dict, version_string, subgroup_id_map, report_lines):
                    overall_changes = True
                    # Put the updated history back into the main nested structure
                    historical_avatars.setdefault(category, {})[
                        subgroup_name] = historical_subgroup_dict[subgroup_name]

        # Handle avatarFashionItemSets separately (treating it as a single versioned object for simplicity)
        # This part could be expanded to diff the sets themselves
        historical_avatars.setdefault('avatarFashionItemSets', {})[
            version_string] = resolved_avatars['avatarFashionItemSets']

        if overall_changes:
            report_path = os.path.join(
                args.output_dir, f'report_avatars_{version_string}.txt')
            with open(report_path, 'w', encoding='utf-8') as f:
                f.write('\n'.join(report_lines))
            print("Avatar report generated.")
        else:
            print("No avatar changes detected.")

        with open(historical_files['avatar'], 'w', encoding='utf-8') as f:
            json.dump(historical_avatars, f, indent=4, ensure_ascii=False)
        write_lua_module(lua_files['avatar'], historical_avatars)

    print("\n--- Pipeline finished successfully. ---")


if __name__ == '__main__':
    main()
