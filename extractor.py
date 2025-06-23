import argparse
import os
import subprocess
import json
from datetime import datetime
import shutil

def python_to_lua_string(data, indent=0):
    """
    Recursively converts a Python object (dict, list, str, int, etc.) to a Lua table string.
    """
    indent_str = "    " * indent
    next_indent_str = "    " * (indent + 1)
    
    if data is None:
        return "nil"
    if isinstance(data, bool):
        return str(data).lower()
    if isinstance(data, (int, float)):
        return str(data)
    if isinstance(data, str):
        # Use json.dumps for robust string escaping that is compatible with Lua.
        return json.dumps(data, ensure_ascii=False)
        
    if isinstance(data, list):
        items = [f"{next_indent_str}{python_to_lua_string(item, indent + 1)}" for item in data]
        return f"{{\n" + ",\n".join(items) + f"\n{indent_str}}}"
        
    if isinstance(data, dict):
        items = []
        for key, value in data.items():
            # Format the key for Lua table syntax, e.g., ["key"] or [123]
            if isinstance(key, str):
                key_str = json.dumps(key, ensure_ascii=False)
            elif isinstance(key, (int, float)):
                key_str = str(key)
            else:
                print(f"Warning: Skipping unsupported key type {type(key)} in Lua conversion.")
                continue
            
            value_str = python_to_lua_string(value, indent + 1)
            items.append(f'{next_indent_str}[{key_str}] = {value_str}')
            
        return f"{{\n" + ",\n".join(items) + f"\n{indent_str}}}"
        
    raise TypeError(f"Unsupported type for Lua conversion: {type(data)}")


def write_lua_module(output_path, data):
    """
    Converts a Python dictionary to a Lua table string and writes it to a .lua file.
    
    Args:
        output_path (str): The full path for the output .lua file.
        data (dict): The Python dictionary to convert.
    """
    print(f"Generating Lua module: {os.path.basename(output_path)}")
    try:
        lua_string = f"return {python_to_lua_string(data)}"
        with open(output_path, 'w', encoding='utf-8') as f:
            f.write(lua_string)
        print(f"Successfully created {os.path.basename(output_path)}")
    except Exception as e:
        print(f"ERROR: Failed to create Lua module at {output_path}. Reason: {e}")


# --- Existing Functions (Unchanged) ---
def run_decryption(input_dir, decrypted_dir):
    """
    Executes the smaster.py script to decrypt files.
    """
    print("--- Step 1: Running Decryption ---")
    os.makedirs(decrypted_dir, exist_ok=True)
    
    script_path = os.path.join(os.path.dirname(os.path.abspath(__file__)), 'smaster.py')
    
    if not os.path.exists(script_path):
        print(f"ERROR: smaster.py not found at {script_path}")
        return False

    try:
        result = subprocess.run(
            ['python', script_path, input_dir, decrypted_dir],
            check=True, capture_output=True, text=True, encoding='utf-8'
        )
        print(result.stdout)
        if result.stderr:
            print("Decryption script stderr:")
            print(result.stderr)
        print("--- Decryption completed successfully. ---")
        return True
    except subprocess.CalledProcessError as e:
        print(f"ERROR: Decryption script failed with exit code {e.returncode}")
        print("Stdout:")
        print(e.stdout)
        print("Stderr:")
        print(e.stderr)
        return False
    except FileNotFoundError:
        print("ERROR: 'python' command not found. Is Python installed and in your PATH?")
        return False


def run_script(script_name, decrypted_dir, output_file):
    """
    Generic function to run a resolver script and configure its I/O.
    """
    print(f"\n--- Running {script_name} ---")
    
    original_script_path = os.path.join(os.path.dirname(os.path.abspath(__file__)), script_name)
    temp_script_path = os.path.join(os.path.dirname(os.path.abspath(__file__)), f"temp_{script_name}")

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
        result = subprocess.run(
            ['python', temp_script_path],
            check=True, capture_output=True, text=True, encoding='utf-8'
        )
        print(result.stdout)
        if result.stderr:
            print(f"{script_name} stderr:")
            print(result.stderr)
        print(f"--- {script_name} completed successfully. ---")
        return True
    except subprocess.CalledProcessError as e:
        print(f"ERROR: {script_name} failed with exit code {e.returncode}")
        print("Stdout:")
        print(e.stdout)
        print("Stderr:")
        print(e.stderr)
        return False
    except FileNotFoundError:
        print("ERROR: 'python' command not found. Is Python installed and in your PATH?")
        return False
    finally:
        if os.path.exists(temp_script_path):
            os.remove(temp_script_path)


def generate_diff(old_data, new_data, ignored_keys=None):
    """
    Compares two dictionaries and generates a human-readable list of differences.
    """
    if ignored_keys is None:
        ignored_keys = set()
    
    diffs = []
    all_keys = set(old_data.keys()) | set(new_data.keys())

    for key in sorted(list(all_keys)):
        if key in ignored_keys:
            continue
            
        old_value = old_data.get(key)
        new_value = new_data.get(key)

        if old_value != new_value:
            if key.startswith('resolved_') or key == 'drop_rules':
                diffs.append(f"  - Drops changed for '{key}'")
            elif key == 'materials' and isinstance(old_value, list) and isinstance(new_value, list):
                old_mats = {m['itemId']: m for m in old_value}
                new_mats = {m['itemId']: m for m in new_value}
                mat_keys = set(old_mats.keys()) | set(new_mats.keys())
                for mat_key in mat_keys:
                    old_mat, new_mat = old_mats.get(mat_key), new_mats.get(mat_key)
                    mat_name = (new_mat or old_mat).get('itemName_EN', f"Item {mat_key}")
                    
                    if old_mat is None:
                        diffs.append(f"  - Material Added: '{mat_name}' (Amount: {new_mat.get('amount')})")
                    elif new_mat is None:
                        diffs.append(f"  - Material Removed: '{mat_name}'")
                    elif old_mat != new_mat: # If the material objects differ, find out why
                        if old_mat.get('amount') != new_mat.get('amount'):
                           diffs.append(f"  - Material '{mat_name}' amount changed from {old_mat.get('amount')} to {new_mat.get('amount')}")
                        # --- New: Check for category name changes ---
                        if old_mat.get('itemCategoryName_EN') != new_mat.get('itemCategoryName_EN'):
                           diffs.append(f"  - Material '{mat_name}' category changed from '{old_mat.get('itemCategoryName_EN')}' to '{new_mat.get('itemCategoryName_EN')}'")
            else:
                diffs.append(f"  - Field '{key}' changed from '{old_value}' to '{new_value}'")
    return diffs


def seed_history(initial_history_path, id_key_map):
    """
    Generic function to seed history from a resolver output file.
    """
    print(f"INFO: Seeding initial history from '{initial_history_path}'...")
    try:
        with open(initial_history_path, 'r', encoding='utf-8') as f:
            resolver_data = json.load(f)
        seeded_history = {key: {} for key in id_key_map.keys()}
        initial_version = "initial_seed"
        for data_type, id_key in id_key_map.items():
            if data_type not in resolver_data: continue
            for item in resolver_data[data_type]:
                item_id = str(item.get(id_key))
                if item_id:
                    seeded_history[data_type][item_id] = {initial_version: item}
        print("INFO: Seeding successful.")
        return seeded_history
    except (FileNotFoundError, json.JSONDecodeError) as e:
        print(f"WARNING: Could not read or parse initial history file. Skipping. Reason: {e}")
        return None


def get_version_from_user(historical_files):
    """
    Prompts the user for a version string, checking all historical files for conflicts.
    """
    existing_versions = set()
    for file_path in historical_files:
        if os.path.exists(file_path):
            with open(file_path, 'r', encoding='utf-8') as f:
                data = json.load(f)
                for top_level_key in data.values():
                    for item_history in top_level_key.values():
                        existing_versions.update(item_history.keys())
    
    while True:
        version_string = input("\nEnter a version identifier for this data set (e.g., 'v1.2.3'): ")
        if not version_string:
            print("Version identifier cannot be empty.")
            continue
        if version_string in existing_versions:
            if input(f"WARNING: Version '{version_string}' already exists. Overwrite? [y/N] ").lower().strip() == 'y':
                print(f"Proceeding to overwrite version '{version_string}'.")
                return version_string
            else:
                print("Overwrite cancelled. Please enter a different version identifier.")
                continue
        return version_string


def update_history_file(resolved_data, historical_data, version_string, id_key_map, report_lines):
    """
    A generic function to update a historical data dictionary and generate change report lines.
    """
    has_changes = False
    is_first_run = not any(historical_data.values())

    for data_type, id_key in id_key_map.items():
        if data_type not in resolved_data or not resolved_data[data_type]: continue
        
        type_name = data_type.replace("_", " ").title()
        for item in resolved_data[data_type]:
            item_id = str(item.get(id_key))
            if not item_id: continue

            item_history = historical_data[data_type].get(item_id, {})
            item_name = (item.get('resultItemName_EN') or item.get('seedItemName_EN') or 
                         item.get('nameForTool') or item.get('creatureName_EN') or 
                         item.get('itemName_EN', 'Unknown'))


            if is_first_run or not item_history:
                print(f"  - New {type_name} item found: ID {item_id}")
                report_lines.append(f"+ NEW {type_name} Added: {item_name} (ID: {item_id})")
                historical_data[data_type][item_id] = {version_string: item}
                has_changes = True
            else:
                existing_versions = sorted([v for v in item_history.keys() if v != version_string])
                latest_item = item_history[existing_versions[-1]] if existing_versions else {}
                diffs = generate_diff(latest_item, item)
                if diffs:
                    print(f"  - Changes detected for {type_name} item ID {item_id}")
                    report_lines.append(f"\n* {type_name} Updated: {item_name} (ID: {item_id})")
                    report_lines.extend(diffs)
                    historical_data[data_type].setdefault(item_id, {})[version_string] = item
                    has_changes = True
    return has_changes


def main():
    """Main function to orchestrate the entire data processing pipeline."""
    parser = argparse.ArgumentParser(description="A full pipeline to decrypt, resolve, and version game data.", formatter_class=argparse.RawTextHelpFormatter)
    parser.add_argument("input_dir", help="Path to the directory containing source .dat files.")
    parser.add_argument("output_dir", help="Path to the final output directory for historical data and reports.")
    parser.add_argument("--working_dir", default="working_temp", help="Temporary directory for intermediate files.")
    parser.add_argument("--initial_recipe_history", help="Path to a resolver.py output file to seed recipe history.")
    parser.add_argument("--initial_droptable_history", help="Path to a droptable_resolver.py output file to seed drop table history.")
    args = parser.parse_args()

    os.makedirs(args.output_dir, exist_ok=True)
    os.makedirs(args.working_dir, exist_ok=True)
    decrypted_dir = os.path.join(args.working_dir, 'decrypted')
    
    resolved_recipes_file = os.path.join(args.working_dir, 'resolved_recipes.json')
    historical_recipes_file = os.path.join(args.output_dir, 'historical_recipes.json')
    lua_recipes_file = os.path.join(args.output_dir, 'historical_recipes.lua') # Path for new Lua file
    
    resolved_droptables_file = os.path.join(args.working_dir, 'resolved_droptables.json')
    historical_droptables_file = os.path.join(args.output_dir, 'historical_droptables.json')
    lua_droptables_file = os.path.join(args.output_dir, 'historical_droptables.lua') # Path for new Lua file


    if not run_decryption(args.input_dir, decrypted_dir): return
    if not run_script('resolver.py', decrypted_dir, resolved_recipes_file): return
    if not run_script('droptable_resolver.py', decrypted_dir, resolved_droptables_file): return

    version_string = get_version_from_user([historical_recipes_file, historical_droptables_file])
    
    # Process Recipes
    print("\n--- Updating Recipe History ---")
    recipe_id_map = {"crafting": "craftRecipeId", "smelting": "pid", "cultivation": "id"}
    historical_recipes = json.load(open(historical_recipes_file, 'r', encoding='utf-8')) if os.path.exists(historical_recipes_file) else \
                         seed_history(args.initial_recipe_history, recipe_id_map) if args.initial_recipe_history and os.path.exists(args.initial_recipe_history) else \
                         {"crafting": {}, "smelting": {}, "cultivation": {}}
    
    with open(resolved_recipes_file, 'r', encoding='utf-8') as f: resolved_recipes = json.load(f)
    recipe_report_lines = [f"Recipe Change Report for version: {version_string}\n"]
    if update_history_file(resolved_recipes, historical_recipes, version_string, recipe_id_map, recipe_report_lines):
        with open(os.path.join(args.output_dir, f'report_recipes_{version_string}.txt'), 'w', encoding='utf-8') as f: f.write('\n'.join(recipe_report_lines))
        print("Recipe report generated.")
    else:
        print("No recipe changes detected.")
    
    with open(historical_recipes_file, 'w', encoding='utf-8') as f: json.dump(historical_recipes, f, indent=4, ensure_ascii=False)
    # Generate the Lua module for recipes
    write_lua_module(lua_recipes_file, historical_recipes)

    # Process Drop Tables
    print("\n--- Updating Drop Table History ---")
    droptable_id_map = {"breakable_objects": "objectId", "harvestable_objects": "pid", "creature_drops": "creatureId", "nest_objects": "nestObjectId"}
    historical_droptables = json.load(open(historical_droptables_file, 'r', encoding='utf-8')) if os.path.exists(historical_droptables_file) else \
                            seed_history(args.initial_droptable_history, droptable_id_map) if args.initial_droptable_history and os.path.exists(args.initial_droptable_history) else \
                            {key: {} for key in droptable_id_map.keys()}

    with open(resolved_droptables_file, 'r', encoding='utf-8') as f: resolved_droptables = json.load(f)
    droptable_report_lines = [f"Drop Table Change Report for version: {version_string}\n"]
    if update_history_file(resolved_droptables, historical_droptables, version_string, droptable_id_map, droptable_report_lines):
        with open(os.path.join(args.output_dir, f'report_droptables_{version_string}.txt'), 'w', encoding='utf-8') as f: f.write('\n'.join(droptable_report_lines))
        print("Drop table report generated.")
    else:
        print("No drop table changes detected.")
    
    with open(historical_droptables_file, 'w', encoding='utf-8') as f: json.dump(historical_droptables, f, indent=4, ensure_ascii=False)
    # Generate the Lua module for drop tables
    write_lua_module(lua_droptables_file, historical_droptables)

    print("\n--- Pipeline finished successfully. ---")

if __name__ == '__main__':
    main()
