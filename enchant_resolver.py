

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


def find_item_name(item_id, text_data, config):
    """
    Finds the name for an item ID using a configurable prefix map.
    """
    if not item_id or item_id == 0:
        return None

    item_id_str = str(item_id)
    prefixes = config.get("name_resolution_prefixes", {})

    for id_prefix, name_prefix in prefixes.items():
        if item_id_str.startswith(id_prefix):
            key = f"{name_prefix}{item_id_str}"
            if key in text_data:
                return text_data[key]

    for key in text_data.keys():
        is_direct_match = (key == f"item_{item_id_str}")
        is_complex_match = key.startswith(
            "item_") and key.endswith(f"_{item_id_str}")

        if "_d_" not in key and (is_direct_match or is_complex_match):
            return text_data.get(key)

    return None


def resolve_enchant_data(input_dir, output_file):
    """
    Resolves enchantment data from two perspectives:
    1. By ingredient: What skills does an item enchantment produce?
    2. By skill: What item enchantments can produce a specific skill?
    """
    try:
        print("Loading all necessary master files for enchantments...")
        config = load_config()

        file_paths = {
            'enchant_item': os.path.join(input_dir, 'master_enchant_item.json'),
            'passive_skill': os.path.join(input_dir, 'master_battle_passive_skill.json'),
            'passive_skill_effect': os.path.join(input_dir, 'master_battle_passive_skill_effect.json'),
            'text_en': os.path.join(input_dir, 'master_text_EN.json'),
            'text_ja': os.path.join(input_dir, 'master_text_JA.json'),
        }

        data = {}
        for name, path in file_paths.items():
            if os.path.exists(path):
                with open(path, 'r', encoding='utf-8') as f:
                    data[name] = json.load(f)
            else:
                print(f"Warning: File not found, skipping: {path}")
                data[name] = {'list': []}

        passive_skill_map = {
            item['id']: item for item in data['passive_skill'].get('list', [])}
        passive_skill_effect_map = defaultdict(list)
        for item in data['passive_skill_effect'].get('list', []):
            passive_skill_effect_map[item['passiveSkillId']].append(item)

        print("Resolving Enchantment Ingredients...")
        resolved_ingredients_list = []
        for enchant in data['enchant_item'].get('list', []):
            resolved_enchant = enchant.copy()
            item_id = enchant.get('itemId')
            catalyst_id = enchant.get('catalystItemId')

            resolved_enchant['itemName_EN'] = find_item_name(
                item_id, data['text_en'], config) or f"Name not found for item {item_id}"
            resolved_enchant['itemName_JA'] = find_item_name(
                item_id, data['text_ja'], config) or f"Name not found for item {item_id}"
            resolved_enchant['catalystItemName_EN'] = find_item_name(
                catalyst_id, data['text_en'], config) or f"Name not found for item {catalyst_id}"
            resolved_enchant['catalystItemName_JA'] = find_item_name(
                catalyst_id, data['text_ja'], config) or f"Name not found for item {catalyst_id}"

            for i in range(1, 3):
                skill_id_key = f'enchant{i}SkillId'
                skill_id = enchant.get(skill_id_key)

                if skill_id and skill_id in passive_skill_map:
                    skill_info = passive_skill_map[skill_id].copy()
                    name_key = skill_info.get('nameKey')
                    desc_key = skill_info.get('descriptionKey')
                    if name_key:
                        skill_info['name_EN'] = data['text_en'].get(
                            name_key, f"Name not found for key {name_key}")
                        skill_info['name_JA'] = data['text_ja'].get(
                            name_key, f"Name not found for key {name_key}")
                    if desc_key:
                        skill_info['description_EN'] = data['text_en'].get(
                            desc_key, f"Desc not found for key {desc_key}")
                        skill_info['description_JA'] = data['text_ja'].get(
                            desc_key, f"Desc not found for key {desc_key}")
                    skill_info['effects'] = passive_skill_effect_map.get(
                        skill_id, [])
                    resolved_enchant[f'resolved_enchant{i}Skill'] = skill_info

            resolved_ingredients_list.append(resolved_enchant)

        print("Resolving Enchantment Skills...")
        resolved_skills_map = {}
        for ingredient in resolved_ingredients_list:
            for i in range(1, 3):
                resolved_skill_key = f'resolved_enchant{i}Skill'
                if resolved_skill_key in ingredient:
                    skill_data = ingredient[resolved_skill_key]
                    skill_id = skill_data['id']

                    if skill_id not in resolved_skills_map:
                        resolved_skills_map[skill_id] = skill_data.copy()
                        resolved_skills_map[skill_id]['source_items'] = []

                    source_item_copy = ingredient.copy()
                    source_item_copy.pop('resolved_enchant1Skill', None)
                    source_item_copy.pop('resolved_enchant2Skill', None)

                    resolved_skills_map[skill_id]['source_items'].append(
                        source_item_copy)

        resolved_skills_list = list(resolved_skills_map.values())

        final_output = {
            "enchant_ingredients": resolved_ingredients_list,
            "enchant_skills": resolved_skills_list
        }

        with open(output_file, 'w', encoding='utf-8') as f:
            json.dump(final_output, f, indent=4, ensure_ascii=False)
        print(
            f"\nSuccessfully resolved enchantment data and saved to '{output_file}'")

    except Exception as e:
        print(f"An unexpected error occurred in the enchant resolver: {e}")
        import traceback
        traceback.print_exc()


if __name__ == '__main__':
    INPUT_DIRECTORY = 'sandbox_dec'
    OUTPUT_FILE = 'resolved_enchants.json'
    if not os.path.exists(INPUT_DIRECTORY):
        os.makedirs(INPUT_DIRECTORY)
    resolve_enchant_data(INPUT_DIRECTORY, OUTPUT_FILE)
