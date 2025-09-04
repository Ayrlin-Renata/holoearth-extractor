# avatar_resolver.py

import json
import os
from collections import defaultdict

# In a real scenario, you might use the requests library to fetch this from a URL.
# import requests
# AVATAR_DATA_URL = "http://example.com/avatar_data.json"

def load_config():
    """Loads the configuration file."""
    config_path = os.path.join(os.path.dirname(os.path.abspath(__file__)), 'config.json')
    if os.path.exists(config_path):
        with open(config_path, 'r', encoding='utf-8') as f:
            return json.load(f)
    print("WARNING: config.json not found. Category-based resolution will be skipped.")
    return {}

def fetch_avatar_data():
    """Fetches avatar data. Falls back to a local sample file."""
    # try:
    #     response = requests.get(AVATAR_DATA_URL, timeout=10)
    #     response.raise_for_status()
    #     return response.json()
    # except requests.RequestException as e:
    #     print(f"Could not fetch data from URL: {e}. Falling back to local 'avatar-sample.json'.")
    sample_path = os.path.join(os.path.dirname(os.path.abspath(__file__)), 'avatar-sample.json')
    if os.path.exists(sample_path):
        with open(sample_path, 'r', encoding='utf-8') as f:
            return json.load(f)
    raise FileNotFoundError("avatar-sample.json not found.")

def resolve_avatar_data(output_file):
    """
    Processes raw avatar data into a resolved, structured format.
    - Resolves localization keys for names and descriptions.
    - Groups fashion items into sets by 'sortKey'.
    - Injects related data (badges, tags) into fashion items using a category map.
    """
    print("--- Starting Avatar Data Resolution ---")
    try:
        raw_data = fetch_avatar_data()
        config = load_config()

        # 1. Prepare lookup dictionaries for fast resolution
        localizes_map = {item['k']: item for item in raw_data.get('localizes', [])}
        descriptions_map = {item['k']: item for item in raw_data.get('avatarPartsDescriptions', [])}

        # 2. Define the final output structure and map raw keys to it
        output_structure = {
            "fashion_item": {}, "avatar": {}, "mannequin": {}, 
            "shop": {}, "data": {}, "avatarFashionItemSets": []
        }
        key_mapping = {
            "fashion_item": [k for k in raw_data if k.startswith('avatarAcc') or k.startswith('avatarCloth') or k == 'avatarContacts'],
            "avatar": ['avatarCheeks', 'avatarEyebrows', 'avatarEyes', 'avatarEyeColors', 'avatarEyeshadows', 'avatarFaces', 'avatarHairBacks', 'avatarHairFronts', 'avatarHairMiddles', 'avatarHairSets', 'avatarLips', 'avatarPaints', 'avatarPupils', 'avatarRampHairColors', 'avatarRampSkinColors', 'avatarVoiceTypes', 'avatarTypes', 'avatarPresets'],
            "mannequin": [k for k in raw_data if k.startswith('mannequin')],
            "shop": ['editCosts', 'editCostGroups', 'avatarCustomCategorys'],
            "data": ['areaTags', 'keyVals', 'avatarCreateMenuCategorys', 'avatarCreateModeEnvironments', 'avatarDressupCategorys', 'avatarInits', 'avatarPartsThumbnails']
        }
        
        fashion_sets = defaultdict(list)
        resolved_subgroups_flat = {} # Temp flat map for easy access during injection

        # 3. Main processing loop to resolve localization and group sets
        print("Resolving localizations and grouping fashion sets...")
        for category, keys in key_mapping.items():
            for key in keys:
                if key not in raw_data: continue
                
                resolved_list = []
                for item in raw_data[key]:
                    resolved_item = item.copy()
                    
                    # Resolve localizeKey for name
                    loc_key = resolved_item.get('localizeKey') or resolved_item.get('nameKey')
                    if loc_key:
                        if loc_key in localizes_map:
                            resolved_item['localize_EN'] = localizes_map[loc_key].get('en')
                            resolved_item['localize_JA'] = localizes_map[loc_key].get('ja')
                        
                        # Resolve corresponding description key (e.g., "KEY_DESC")
                        desc_key = f"{loc_key}_DESC"
                        if desc_key in descriptions_map:
                            resolved_item['description_EN'] = descriptions_map[desc_key].get('en')
                            resolved_item['description_JA'] = descriptions_map[desc_key].get('ja')

                    resolved_list.append(resolved_item)

                    # Group items into fashion sets if they have a sortKey
                    if category == 'fashion_item' and 'sortKey' in resolved_item and resolved_item['sortKey'] is not None:
                         fashion_sets[resolved_item['sortKey']].append({
                             "source": key,
                             "id": resolved_item.get('id'),
                             "localize_EN": resolved_item.get('localize_EN'),
                             "localize_JA": resolved_item.get('localize_JA')
                         })
                
                output_structure[category][key] = resolved_list
                resolved_subgroups_flat[key] = resolved_list

        # 4. Inject category-based data into the resolved fashion items
        print("Injecting category-based data (badges, tags, etc.)...")
        category_map = config.get('avatar_category_sources', {})
        if not category_map:
            print("WARNING: 'avatar_category_sources' not in config.json. Skipping injection.")
        else:
            fashion_item_map_by_id = {key: {item['id']: item for item in items} 
                                      for key, items in resolved_subgroups_flat.items() 
                                      if key in key_mapping['fashion_item']}

            sources_to_resolve = {
                'avatarUiBadges': ('category', 'identifier', 'resolved_avatarUiBadges'),
                'optionalPartsSettings': ('category', 'identifier', 'resolved_optionalPartsSettings'),
                'switchingExtraPartsNames': ('category', 'identifier', 'resolved_switchingExtraPartsNames'),
                'avatarPartsTags': ('category', 'id', 'resolved_avatarPartsTags')
            }

            for source_key, (cat_key, id_key, target_field) in sources_to_resolve.items():
                if source_key in raw_data:
                    for item_to_inject in raw_data[source_key]:
                        category_id_str = str(item_to_inject.get(cat_key))
                        target_id = item_to_inject.get(id_key)

                        if category_id_str in category_map:
                            target_source_key = category_map[category_id_str]
                            if target_source_key in fashion_item_map_by_id and target_id in fashion_item_map_by_id[target_source_key]:
                                target_item = fashion_item_map_by_id[target_source_key][target_id]
                                target_item.setdefault(target_field, []).append(item_to_inject)

        # 5. Finalize the fashion sets list
        output_structure['avatarFashionItemSets'] = sorted([{'sortKey': k, 'items': v} for k, v in fashion_sets.items()], key=lambda x: x['sortKey'])

        # 6. Write the final resolved data to the output file
        with open(output_file, 'w', encoding='utf-8') as f:
            json.dump(output_structure, f, indent=4, ensure_ascii=False)
        print(f"--- Avatar data resolution successful. Output saved to '{output_file}' ---")

    except Exception as e:
        print(f"An error occurred in the avatar resolver: {e}")
        import traceback
        traceback.print_exc()

if __name__ == '__main__':
    # This block is modified by the run_script function in extractor.py
    OUTPUT_FILE = 'resolved_avatars.json'
    # INPUT_DIRECTORY is not used by this resolver but is kept for compatibility with run_script
    INPUT_DIRECTORY = r'dummy_input'
    resolve_avatar_data(OUTPUT_FILE)