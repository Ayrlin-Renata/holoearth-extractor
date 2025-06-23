# resolver.py

import json
import os
from collections import defaultdict

def load_config():
    """Loads the name resolution and facility config file."""
    config_path = os.path.join(os.path.dirname(os.path.abspath(__file__)), 'config.json')
    if os.path.exists(config_path):
        with open(config_path, 'r', encoding='utf-8') as f:
            return json.load(f)
    return {"name_resolution_prefixes": {}, "facility_names": {}}

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
        is_complex_match = key.startswith("item_") and key.endswith(f"_{item_id_str}")
        
        if "_d_" not in key and (is_direct_match or is_complex_match):
            return text_data.get(key)
            
    return None

def resolve_recipes(input_dir, output_file):
    """
    Resolves names and related data for various recipe types from master files.
    """
    try:
        config = load_config()
        file_paths = {
            'craft_recipe': os.path.join(input_dir, 'master_craft_recipe.json'),
            'recipe_skill': os.path.join(input_dir, 'master_recipe_skill.json'),
            'text_en': os.path.join(input_dir, 'master_text_EN.json'),
            'text_ja': os.path.join(input_dir, 'master_text_JA.json'),
            'craft_material': os.path.join(input_dir, 'master_craft_material.json'),
            'smelting_recipe': os.path.join(input_dir, 'master_smelting_craft_recipe.json'),
            'byproduct_drop': os.path.join(input_dir, 'master_craft_byproduct_drop.json'),
            'craft_recipe_group': os.path.join(input_dir, 'master_craft_recipe_group.json'),
            'cultivation': os.path.join(input_dir, 'master_cultivation.json'),
            'cultivation_drop_score': os.path.join(input_dir, 'master_cultivation_drop_score.json'),
            'cultivation_drop_lottery': os.path.join(input_dir, 'master_cultivation_drop_lottery.json'),
        }

        data = {}
        for name, path in file_paths.items():
            if os.path.exists(path):
                with open(path, 'r', encoding='utf-8') as f:
                    data[name] = json.load(f)
            else:
                print(f"Warning: File not found, skipping: {path}")
                data[name] = {'list': []}

        recipe_skills_map = {item['id']: item for item in data['recipe_skill'].get('list', [])}
        materials_map = defaultdict(list)
        for item in data['craft_material'].get('list', []):
            materials_map[item['recipeId']].append(item)
        byproduct_drop_map = {item['dropId']: item for item in data['byproduct_drop'].get('list', [])}
        craft_recipe_group_map = {item['craftRecipeId']: item for item in data['craft_recipe_group'].get('list', [])}
        facility_names_map = config.get("facility_names", {})
        cultivation_drop_score_map = defaultdict(list)
        for item in data['cultivation_drop_score'].get('list', []):
            cultivation_drop_score_map[item['groupId']].append(item)
        cultivation_drop_lottery_map = defaultdict(list)
        for item in data['cultivation_drop_lottery'].get('list', []):
            cultivation_drop_lottery_map[item['groupId']].append(item)

        resolved_crafting_list = []
        for recipe in data['craft_recipe'].get('list', []):
            resolved_recipe = recipe.copy()
            craft_id = recipe.get('craftRecipeId')

            group_info = craft_recipe_group_map.get(craft_id)
            if group_info:
                recipe_group_id = group_info.get('recipeGroupId')
                resolved_recipe['recipeGroupId'] = recipe_group_id
                resolved_recipe['systemType'] = group_info.get('systemType')
                resolved_recipe['facilityName'] = facility_names_map.get(str(recipe_group_id), "Unknown Facility")

            skill_id = recipe.get('conditionalRecipeSkillId')
            if skill_id in recipe_skills_map:
                skill_name_key = recipe_skills_map[skill_id].get('nameKey')
                if skill_name_key:
                    resolved_recipe['conditionalRecipeSkillName_EN'] = data['text_en'].get(skill_name_key)
                    resolved_recipe['conditionalRecipeSkillName_JA'] = data['text_ja'].get(skill_name_key)

            item_id = recipe.get('resultItemId')
            resolved_recipe['resultItemName_EN'] = find_item_name(item_id, data['text_en'], config) or f"Name not found for item {item_id}"
            resolved_recipe['resultItemName_JA'] = find_item_name(item_id, data['text_ja'], config) or f"Name not found for item {item_id}"

            recipe_materials = materials_map.get(craft_id, [])
            resolved_materials_list = []
            for material in recipe_materials:
                resolved_material = material.copy()
                material_item_id = material.get('itemId')
                resolved_material['itemName_EN'] = find_item_name(material_item_id, data['text_en'], config) or f"Name not found for item {material_item_id}"
                resolved_material['itemName_JA'] = find_item_name(material_item_id, data['text_ja'], config) or f"Name not found for item {material_item_id}"
                
                # --- New: Resolve Item Category Name ---
                category_id = material.get('itemCategory')
                if category_id:
                    category_key = f"item_category_{category_id}"
                    resolved_material['itemCategoryName_EN'] = data['text_en'].get(category_key, "Unknown Category")
                    resolved_material['itemCategoryName_JA'] = data['text_ja'].get(category_key, "不明なカテゴリ")

                resolved_materials_list.append(resolved_material)
            resolved_recipe['materials'] = resolved_materials_list
            resolved_crafting_list.append(resolved_recipe)

        resolved_smelting_list = []
        for recipe in data['smelting_recipe'].get('list', []):
            resolved_recipe = recipe.copy()
            material_id = recipe.get('materialItemId')
            resolved_recipe['materialItemName_EN'] = find_item_name(material_id, data['text_en'], config) or f"Name not found for item {material_id}"
            resolved_recipe['materialItemName_JA'] = find_item_name(material_id, data['text_ja'], config) or f"Name not found for item {material_id}"
            result_id = recipe.get('resultItemId')
            resolved_recipe['resultItemName_EN'] = find_item_name(result_id, data['text_en'], config) or f"Name not found for item {result_id}"
            resolved_recipe['resultItemName_JA'] = find_item_name(result_id, data['text_ja'], config) or f"Name not found for item {result_id}"
            byproduct_id = recipe.get('byproductDropId')
            if byproduct_id in byproduct_drop_map:
                byproduct_info = byproduct_drop_map[byproduct_id].copy()
                byproduct_item_id = byproduct_info.get('itemId')
                byproduct_info['itemName_EN'] = find_item_name(byproduct_item_id, data['text_en'], config) or f"Name not found for item {byproduct_item_id}"
                byproduct_info['itemName_JA'] = find_item_name(byproduct_item_id, data['text_ja'], config) or f"Name not found for item {byproduct_item_id}"
                resolved_recipe['byproductInfo'] = byproduct_info
            resolved_smelting_list.append(resolved_recipe)

        resolved_cultivation_list = []
        for recipe in data['cultivation'].get('list', []):
            resolved_recipe = recipe.copy()
            seed_id = recipe.get('seedItemId')
            resolved_recipe['seedItemName_EN'] = find_item_name(seed_id, data['text_en'], config) or f"Name not found for item {seed_id}"
            resolved_recipe['seedItemName_JA'] = find_item_name(seed_id, data['text_ja'], config) or f"Name not found for item {seed_id}"
            score_group_id = recipe.get('dropScoreGroupId')
            resolved_scores = []
            for score_entry in cultivation_drop_score_map.get(score_group_id, []):
                resolved_score_entry = score_entry.copy()
                lottery_group_id = score_entry.get('dropLotteryGroupId')
                resolved_lotteries = []
                for lottery_entry in cultivation_drop_lottery_map.get(lottery_group_id, []):
                    resolved_lottery_entry = lottery_entry.copy()
                    drop_item_id = lottery_entry.get('dropItemId')
                    resolved_lottery_entry['dropItemName_EN'] = find_item_name(drop_item_id, data['text_en'], config) or f"Name not found for item {drop_item_id}"
                    resolved_lottery_entry['dropItemName_JA'] = find_item_name(drop_item_id, data['text_ja'], config) or f"Name not found for item {drop_item_id}"
                    resolved_lotteries.append(resolved_lottery_entry)
                resolved_score_entry['resolved_lotteries'] = resolved_lotteries
                resolved_scores.append(resolved_score_entry)
            resolved_recipe['resolved_drop_scores'] = resolved_scores
            resolved_cultivation_list.append(resolved_recipe)

        final_output = { 
            "crafting": resolved_crafting_list, 
            "smelting": resolved_smelting_list,
            "cultivation": resolved_cultivation_list
        }
        with open(output_file, 'w', encoding='utf-8') as f:
            json.dump(final_output, f, indent=4, ensure_ascii=False)
        print(f"Successfully resolved recipes and saved to '{output_file}'")

    except Exception as e:
        print(f"An unexpected error occurred in recipe resolver: {e}")
        import traceback
        traceback.print_exc()

if __name__ == '__main__':
    INPUT_DIRECTORY = 'sandbox_dec'
    OUTPUT_FILE = 'resolved_recipes.json'
    if not os.path.exists(INPUT_DIRECTORY):
        os.makedirs(INPUT_DIRECTORY)
    resolve_recipes(INPUT_DIRECTORY, OUTPUT_FILE)
