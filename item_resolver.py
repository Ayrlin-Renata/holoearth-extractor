

import json
import os
from collections import defaultdict


def load_config():
    """Loads the name resolution config file."""
    config_path = os.path.join(os.path.dirname(
        os.path.abspath(__file__)), 'config.json')
    if os.path.exists(config_path):
        with open(config_path, 'r', encoding='utf-8') as f:
            return json.load(f)
    return {"name_resolution_prefixes": {}}


def find_item_text(item_id, text_data, config, is_description=False):
    """
    Finds the name or description for an item ID.
    It uses the config to find the correct prefix (e.g., 'item_food_')
    and handles the '_d_' pattern for descriptions.
    """
    if not item_id or item_id == 0:
        return None

    item_id_str = str(item_id)
    prefixes = config.get("name_resolution_prefixes", {})

    for id_prefix, name_prefix in prefixes.items():
        if item_id_str.startswith(id_prefix):
            key = ""
            if is_description:

                desc_prefix = name_prefix.rstrip('_') + "_d_"
                key = f"{desc_prefix}{item_id_str}"
            else:

                key = f"{name_prefix}{item_id_str}"

            if key in text_data:
                return text_data[key]

    return None


def resolve_item_data(input_dir, output_file):
    """
    Resolves item data by combining a base item list with numerous
    category-specific detail files.
    """
    try:
        print("Loading all necessary master files for items...")
        config = load_config()

        files_to_load = [
            'master_item_common', 'master_item_category', 'master_text_EN', 'master_text_JA',
            'master_accessory', 'master_armor', 'master_bullet', 'master_cultivation_fertilizer',
            'master_element', 'master_food', 'master_implement', 'master_material',
            'master_skill_book', 'master_smelting_fuel', 'master_tool', 'master_trap',
            'master_vehicle_item', 'master_weapon'
        ]

        data = {}
        for name in files_to_load:
            path = os.path.join(input_dir, f'{name}.json')
            if os.path.exists(path):
                with open(path, 'r', encoding='utf-8') as f:
                    data[name] = json.load(f)
            else:
                print(f"Warning: File not found, skipping: {path}")
                data[name] = {'list': []}

        extra_data_config = {
            'master_accessory.json': 'accessoryId',
            'master_armor.json': 'armorId',
            'master_bullet.json': 'bulletId',
            'master_cultivation_fertilizer.json': 'itemId',
            'master_element.json': 'id',
            'master_food.json': 'foodId',
            'master_implement.json': 'implementId',
            'master_material.json': 'materialId',
            'master_skill_book.json': 'id',
            'master_smelting_fuel.json': 'fuelItemId',
            'master_tool.json': 'toolId',
            'master_trap.json': 'trapId',
            'master_vehicle_item.json': 'itemId',
            'master_weapon.json': 'weaponId',
        }

        item_category_map = {
            cat['itemCategoryId']: cat for cat in data['master_item_category'].get('list', [])}

        extra_data_maps = {}
        for filename, id_key in extra_data_config.items():
            file_key = filename.split('.')[0]
            if data.get(file_key) and data[file_key].get('list'):
                extra_data_maps[filename] = {
                    item[id_key]: item for item in data[file_key]['list']}

        resolved_items_list = []
        print("Resolving item details...")

        for item in data['master_item_common'].get('list', []):
            resolved_item = item.copy()
            item_id = item.get('itemId')

            resolved_item['itemName_EN'] = find_item_text(
                item_id, data['master_text_EN'], config)
            resolved_item['itemName_JA'] = find_item_text(
                item_id, data['master_text_JA'], config)
            resolved_item['itemDescription_EN'] = find_item_text(
                item_id, data['master_text_EN'], config, is_description=True)
            resolved_item['itemDescription_JA'] = find_item_text(
                item_id, data['master_text_JA'], config, is_description=True)

            category_id = item.get('categoryId')
            if category_id in item_category_map:
                category_info = item_category_map[category_id].copy()
                name_key = category_info.get('nameKey')
                if name_key:
                    category_info['name_EN'] = data['master_text_EN'].get(
                        name_key)
                    category_info['name_JA'] = data['master_text_JA'].get(
                        name_key)
                resolved_item['category'] = category_info

            resolved_item['extra_data'] = []
            for filename, data_map in extra_data_maps.items():
                if item_id in data_map:
                    extra_info = {
                        'source_file': filename,
                        'data': data_map[item_id]
                    }
                    resolved_item['extra_data'].append(extra_info)

            resolved_items_list.append(resolved_item)

        final_output = {"items": resolved_items_list}

        with open(output_file, 'w', encoding='utf-8') as f:
            json.dump(final_output, f, indent=4, ensure_ascii=False)
        print(
            f"\nSuccessfully resolved all item data and saved to '{output_file}'")

    except Exception as e:
        print(f"An unexpected error occurred in the item resolver: {e}")
        import traceback
        traceback.print_exc()


if __name__ == '__main__':
    INPUT_DIRECTORY = 'sandbox_dec'
    OUTPUT_FILE = 'resolved_items.json'
    if not os.path.exists(INPUT_DIRECTORY):
        os.makedirs(INPUT_DIRECTORY)
    resolve_item_data(INPUT_DIRECTORY, OUTPUT_FILE)
