import json
import os
from collections import defaultdict
import requests


def load_config():
    """Loads the configuration file."""
    config_path = os.path.join(os.path.dirname(
        os.path.abspath(__file__)), 'config.json')
    if os.path.exists(config_path):
        with open(config_path, 'r', encoding='utf-8') as f:
            return json.load(f)
    print("WARNING: config.json not found. Category-based resolution will be skipped.")
    return {}


def fetch_avatar_data(config):
    """
    Fetches avatar data from the URL specified in the config.
    Falls back to a local sample file if the request fails.
    """
    avatar_url = config.get('avatar_url')
    if avatar_url:
        try:
            print(f"Attempting to fetch avatar data from: {avatar_url}")
            response = requests.get(avatar_url, timeout=15)
            response.raise_for_status()  # Raises an exception for bad status codes (4xx or 5xx)
            print("Successfully fetched data from URL.")
            return response.json()
        except requests.RequestException as e:
            print(f"Could not fetch data from URL: {e}.")
    else:
        print("No 'avatar_url' found in config.json.")

    raise FileNotFoundError(f"Avatar data URL ({avatar_url}) request failed.")


def resolve_avatar_data(output_file):
    """
    Processes raw avatar data into a resolved, structured format.
    - Resolves localization keys for names and descriptions.
    - Groups fashion items into sets by 'sortKey'.
    - Injects related data (badges, tags) into fashion items using a category map.
    - Resolves relationships within shop and mannequin data.
    """
    print("--- Starting Avatar Data Resolution ---")
    try:
        config = load_config()
        raw_data = fetch_avatar_data(config)

        # 1. Prepare lookup dictionaries for fast resolution
        localizes_map = {item['k']: item for item in raw_data.get(
            'localizes', [])}
        descriptions_map = {item['k']: item for item in raw_data.get(
            'avatarPartsDescriptions', [])}

        # 2. Define the final output structure and map raw keys to it (with adjustments)
        output_structure = {
            "fashion_item": {}, "avatar": {}, "mannequin": {},
            "shop": {}, "data": {}, "avatarFashionItemSets": []
        }
        key_mapping = {
            "fashion_item": [k for k in raw_data if k.startswith('avatarAcc') or k.startswith('avatarCloth') or k == 'avatarContacts'],
            "avatar": ['avatarCheeks', 'avatarEyebrows', 'avatarEyes', 'avatarEyeColors', 'avatarEyeshadows', 'avatarFaces', 'avatarHairBacks', 'avatarHairFronts', 'avatarHairMiddles', 'avatarHairSets', 'avatarLips', 'avatarPaints', 'avatarPupils', 'avatarRampHairColors', 'avatarRampSkinColors', 'avatarVoiceTypes', 'avatarTypes', 'avatarPresets'],
            "mannequin": ['mannequinObjects', 'mannequinStands', 'partsMannequins'],
            "shop": ['editCostGroups', 'avatarCustomCategorys'],
            "data": ['areaTags', 'keyVals', 'avatarCreateMenuCategorys', 'avatarCreateModeEnvironments', 'avatarDressupCategorys', 'avatarInits', 'avatarPartsThumbnails']
        }

        fashion_sets = defaultdict(list)
        resolved_subgroups_flat = {}

        # 3. Main processing loop to resolve localization and build initial structure
        print("Resolving localizations and grouping fashion sets...")
        for category, keys in key_mapping.items():
            for key in keys:
                if key not in raw_data:
                    continue

                resolved_list = []
                for item in raw_data[key]:
                    resolved_item = item.copy()
                    # Look for various possible localization keys
                    loc_key = (resolved_item.get('localizeKey') or
                               resolved_item.get('nameKey') or
                               resolved_item.get('categoryNameKey'))
                    if loc_key:
                        if loc_key in localizes_map:
                            resolved_item['localize_EN'] = localizes_map[loc_key].get(
                                'en')
                            resolved_item['localize_JA'] = localizes_map[loc_key].get(
                                'ja')
                        desc_key = f"{loc_key}_DESC"
                        if desc_key in descriptions_map:
                            resolved_item['description_EN'] = descriptions_map[desc_key].get(
                                'en')
                            resolved_item['description_JA'] = descriptions_map[desc_key].get(
                                'ja')
                    resolved_list.append(resolved_item)
                    if category == 'fashion_item' and 'sortKey' in resolved_item and resolved_item['sortKey'] is not None:
                        fashion_sets[resolved_item['sortKey']].append({
                            "source": key, "id": resolved_item.get('id'),
                            "localize_EN": resolved_item.get('localize_EN'),
                            "localize_JA": resolved_item.get('localize_JA')
                        })
                output_structure[category][key] = resolved_list
                resolved_subgroups_flat[key] = resolved_list

        # 4. Create a comprehensive lookup map for all fashion and hair items by ID
        item_lookup_map = {}
        item_keys_for_lookup = key_mapping['fashion_item'] + \
            ['avatarHairBacks', 'avatarHairFronts', 'avatarHairMiddles']
        for key in item_keys_for_lookup:
            if key in resolved_subgroups_flat:
                item_lookup_map[key] = {
                    item['id']: item for item in resolved_subgroups_flat[key]}

        # 5. Resolve Edit Costs into Edit Cost Groups
        print("Resolving edit costs into groups...")
        edit_costs_by_group = defaultdict(list)
        for cost_item in raw_data.get('editCosts', []):
            edit_costs_by_group[cost_item.get('group')].append(cost_item)

        for group in output_structure.get('shop', {}).get('editCostGroups', []):
            group['resolved_editCosts'] = edit_costs_by_group.get(
                group.get('group'), [])

        # 6. Resolve Mannequin Data
        print("Resolving mannequin data relationships...")
        acc_groups_by_id = defaultdict(list)
        for acc_group in raw_data.get('mannequinAccGroups', []):
            acc_groups_by_id[acc_group.get('groupId')].append(acc_group)

        abbreviations = config.get('avatar_category_abbreviations', {})

        for mannequin in output_structure.get('mannequin', {}).get('mannequinObjects', []):
            # Resolve accessory groups
            acc_group_id = mannequin.get('accGroupId')
            if acc_group_id:
                mannequin['resolved_mannequinAccGroups'] = acc_groups_by_id.get(
                    acc_group_id, [])

            # Define mappings from mannequin ID fields to data sources
            id_mappings = {
                'clothBottomId': ('avatarClothBottoms', 'resolved_clothBottom'),
                'clothOuterId': ('avatarClothOuters', 'resolved_clothOuter'),
                'clothShoeId': ('avatarClothShoes', 'resolved_clothShoe'),
                'clothSockId': ('avatarClothSocks', 'resolved_clothSock'),
                'clothUnderwearId': ('avatarClothUnderwears', 'resolved_clothUnderwear'),
                'hairBackId': ('avatarHairBacks', 'resolved_hairBack'),
                'hairFrontId': ('avatarHairFronts', 'resolved_hairFront'),
                'hairMiddleId': ('avatarHairMiddles', 'resolved_hairMiddle'),
            }

            # Resolve direct ID mappings
            for id_key, (source_key, resolved_field) in id_mappings.items():
                item_id = mannequin.get(id_key)
                if item_id is not None and item_id != -1 and source_key in item_lookup_map:
                    found_item = item_lookup_map[source_key].get(item_id)
                    if found_item:
                        mannequin[resolved_field] = {
                            'id': item_id,
                            'localize_EN': found_item.get('localize_EN'),
                            'localize_JA': found_item.get('localize_JA')
                        }

            # Resolve head part using abbreviation mapping
            head_part_key = mannequin.get('headPart')
            head_id = mannequin.get('headId')
            if head_part_key and head_id is not None and head_id != -1:
                source_key = abbreviations.get(head_part_key)
                if source_key and source_key in item_lookup_map:
                    found_item = item_lookup_map[source_key].get(head_id)
                    if found_item:
                        mannequin['resolved_head'] = {
                            'id': head_id,
                            'source': source_key,
                            'localize_EN': found_item.get('localize_EN'),
                            'localize_JA': found_item.get('localize_JA')
                        }

        # 7. Inject category-based data into the resolved fashion items
        print("Injecting category-based data (badges, tags, etc.)...")
        category_map = config.get('avatar_category_sources', {})
        if not category_map:
            print(
                "WARNING: 'avatar_category_sources' not in config.json. Skipping injection.")
        else:
            sources_to_resolve = {
                'avatarUiBadges': ('category', 'identifier', 'resolved_avatarUiBadges'),
                'optionalPartsSettings': ('category', 'identifier', 'resolved_optionalPartsSettings'),
                'switchingExtraPartsNames': ('category', 'identifier', 'resolved_switchingExtraPartsNames'),
                'avatarPartsTags': ('category', 'id', 'resolved_avatarPartsTags')
            }

            for source_key, (cat_key, id_key, target_field) in sources_to_resolve.items():
                if source_key in raw_data:
                    for item_to_inject in raw_data[source_key]:
                        category_id_str, target_id = str(
                            item_to_inject.get(cat_key)), item_to_inject.get(id_key)
                        if category_id_str in category_map:
                            target_source_key = category_map[category_id_str]
                            if target_source_key in item_lookup_map and target_id in item_lookup_map[target_source_key]:
                                target_item = item_lookup_map[target_source_key][target_id]
                                target_item.setdefault(
                                    target_field, []).append(item_to_inject)

        # 8. Finalize the fashion sets list
        output_structure['avatarFashionItemSets'] = sorted(
            [{'sortKey': k, 'items': v} for k, v in fashion_sets.items()], key=lambda x: x['sortKey'])

        # 9. Write the final resolved data to the output file
        with open(output_file, 'w', encoding='utf-8') as f:
            json.dump(output_structure, f, indent=4, ensure_ascii=False)
        print(
            f"--- Avatar data resolution successful. Output saved to '{output_file}' ---")

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
