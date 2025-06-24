# droptable_resolver.py

import json
import os
from collections import defaultdict

def load_config():
    """Loads the name resolution and object config file."""
    config_path = os.path.join(os.path.dirname(os.path.abspath(__file__)), 'config.json')
    if os.path.exists(config_path):
        with open(config_path, 'r', encoding='utf-8') as f:
            return json.load(f)
    return {"name_resolution_prefixes": {}, "object_names": {}}

def find_item_name(item_id, text_data, config, drop_min=None, drop_max=None):
    """
    Finds item names using a configurable prefix map.
    Handles the special case for "Nothing".
    """
    if item_id == 0 and drop_min == 0 and drop_max == 0:
        return "Nothing"
    if not item_id:
        return None
    
    item_id_str = str(item_id)
    prefixes = config.get("name_resolution_prefixes", {})

    for id_prefix, name_prefix in prefixes.items():
        if item_id_str.startswith(id_prefix):
            key = f"{name_prefix}{item_id_str}"
            if key in text_data:
                return text_data[key]
    
    key = f"item_material_{item_id_str}"
    if key in text_data:
        return text_data[key]

    return None

def resolve_drop_items(drop_id, drop_item_map, text_en, text_ja, config):
    """
    Takes a dropId and returns a list of fully resolved drop items.
    """
    resolved_drops = []
    for entry in drop_item_map.get(drop_id, []):
        resolved_entry = entry.copy()
        item_id = entry.get('itemId')
        min_amount = entry.get('dropMinAmount')
        max_amount = entry.get('dropMaxAmount')
        
        resolved_entry['itemName_EN'] = find_item_name(item_id, text_en, config, min_amount, max_amount) or f"Name not found for item {item_id}"
        resolved_entry['itemName_JA'] = find_item_name(item_id, text_ja, config, min_amount, max_amount) or f"Name not found for item {item_id}"
        resolved_drops.append(resolved_entry)
    return resolved_drops

def resolve_drop_data(input_dir, output_file):
    """
    Resolves drop tables by starting with parent objects (breakable, creature, etc.)
    and embedding the resolved drop items within them.
    """
    try:
        print("Loading all necessary master files...")
        config = load_config()
        object_names_config = config.get("object_names", {})
        
        file_paths = {
            'text_en': os.path.join(input_dir, 'master_text_EN.json'),
            'text_ja': os.path.join(input_dir, 'master_text_JA.json'),
            'creatures': os.path.join(input_dir, 'master_creature.json'),
            'creature_drops': os.path.join(input_dir, 'master_creature_drop.json'),
            'breakable_objects': os.path.join(input_dir, 'master_breakable_object.json'),
            'harvestable_objects': os.path.join(input_dir, 'master_harvestable_object.json'),
            'nest_objects': os.path.join(input_dir, 'master_nest_breakable_object.json'),
            'dropitems_breakable': os.path.join(input_dir, 'master_dropitem_for_breakable_object.json'),
            'dropitems_creature': os.path.join(input_dir, 'master_dropitem_for_creature.json'),
            'dropitems_harvestable': os.path.join(input_dir, 'master_dropitem_for_harvestable_object.json'),
            'dropitems_nest': os.path.join(input_dir, 'master_dropitem_for_nest_object.json'),
        }

        data = {}
        for name, path in file_paths.items():
            data[name] = json.load(open(path, 'r', encoding='utf-8')) if os.path.exists(path) else {'list': []}

        drop_item_maps = { 'breakable': defaultdict(list), 'creature': defaultdict(list), 'harvestable': defaultdict(list), 'nest': defaultdict(list) }
        for item in data['dropitems_breakable']['list']: drop_item_maps['breakable'][item['dropId']].append(item)
        for item in data['dropitems_creature']['list']: drop_item_maps['creature'][item['dropId']].append(item)
        for item in data['dropitems_harvestable']['list']: drop_item_maps['harvestable'][item['dropId']].append(item)
        for item in data['dropitems_nest']['list']: drop_item_maps['nest'][item['dropId']].append(item)
        
        final_output = {}
        text_en, text_ja = data['text_en'], data['text_ja']

        # 1. Process Breakable Objects
        print("Resolving Breakable Objects...")
        resolved_breakable_list = []
        drop_id_fields = ['suitableDropId', 'suitableDropIdEx1', 'suitableDropIdEx2', 'suitableDropIdEx3', 'suitableDropIdEx4over']
        for obj in data['breakable_objects']['list']:
            resolved_obj = obj.copy()
            name_key = obj.get('nameForTool')
            name_info = object_names_config.get('breakable', {}).get(name_key, {})
            resolved_obj['objectName_EN'] = name_info.get('en')
            resolved_obj['objectName_JA'] = name_info.get('ja')
            
            for field in drop_id_fields:
                if obj.get(field):
                    resolved_obj[f"resolved_{field}"] = resolve_drop_items(obj[field], drop_item_maps['breakable'], text_en, text_ja, config)
            resolved_breakable_list.append(resolved_obj)
        final_output['breakable_objects'] = resolved_breakable_list

        # 2. Process Harvestable Objects
        print("Resolving Harvestable Objects...")
        resolved_harvestable_list = []
        for obj in data['harvestable_objects'].get('list', []):
            resolved_obj = obj.copy()
            
            # --- FIX: Use nameForTool as the unique ID and for config lookup ---
            name_key = obj.get('nameForTool')
            name_info = object_names_config.get('harvestable', {}).get(name_key, {})
            resolved_obj['objectName_EN'] = name_info.get('en')
            resolved_obj['objectName_JA'] = name_info.get('ja')

            # Resolve the drops associated with this object
            drop_id = obj.get('dropId')
            if drop_id:
                resolved_obj['resolved_drops'] = resolve_drop_items(drop_id, drop_item_maps['harvestable'], text_en, text_ja, config)

            resolved_harvestable_list.append(resolved_obj)
        final_output['harvestable_objects'] = resolved_harvestable_list
        
        # 3. Process Creature Drops (Consolidated)
        print("Resolving and Consolidating Creature Drops...")
        consolidated_creatures = {}
        creature_drops_by_id = defaultdict(list)
        for drop_rule in data['creature_drops']['list']:
            creature_drops_by_id[drop_rule['creatureId']].append(drop_rule)

        for creature_id, base_creature in {c['creatureId']: c for c in data['creatures']['list']}.items():
            consolidated_creatures[creature_id] = base_creature.copy()
            name_key = base_creature.get('nameKey')
            consolidated_creatures[creature_id]['creatureName_EN'] = text_en.get(name_key, f"Name not found for key {name_key}")
            consolidated_creatures[creature_id]['creatureName_JA'] = text_ja.get(name_key, f"Name not found for key {name_key}")
            
            name_info = object_names_config.get('creatures', {}).get(str(creature_id), {})
            consolidated_creatures[creature_id]['configName_EN'] = name_info.get('en')
            consolidated_creatures[creature_id]['configName_JA'] = name_info.get('ja')

            drop_rules = []
            for rule in creature_drops_by_id.get(creature_id, []):
                resolved_rule = rule.copy()
                resolved_rule['resolved_drops'] = resolve_drop_items(rule['dropId'], drop_item_maps['creature'], text_en, text_ja, config)
                drop_rules.append(resolved_rule)
            consolidated_creatures[creature_id]['drop_rules'] = drop_rules
        final_output['creature_drops'] = list(consolidated_creatures.values())

        # 4. Process Nest Objects
        print("Resolving Nest Objects...")
        resolved_nest_list = []
        for obj in data['nest_objects']['list']:
            resolved_obj = obj.copy()
            name_key = obj.get('nameForTool')
            name_info = object_names_config.get('nest', {}).get(name_key, {})
            resolved_obj['objectName_EN'] = name_info.get('en')
            resolved_obj['objectName_JA'] = name_info.get('ja')

            for field in drop_id_fields:
                if obj.get(field):
                    resolved_obj[f"resolved_{field}"] = resolve_drop_items(obj[field], drop_item_maps['nest'], text_en, text_ja, config)
            resolved_nest_list.append(resolved_obj)
        final_output['nest_objects'] = resolved_nest_list

        with open(output_file, 'w', encoding='utf-8') as f:
            json.dump(final_output, f, indent=4, ensure_ascii=False)
        print(f"\nSuccessfully resolved all drop data and saved to '{output_file}'")

    except Exception as e:
        print(f"An unexpected error occurred in drop table resolver: {e}")
        import traceback
        traceback.print_exc()

if __name__ == '__main__':
    INPUT_DIRECTORY = 'sandbox_dec'
    OUTPUT_FILE = 'resolved_droptables.json'
    if not os.path.exists(INPUT_DIRECTORY):
        os.makedirs(INPUT_DIRECTORY)
    resolve_drop_data(INPUT_DIRECTORY, OUTPUT_FILE)
