# creature_resolver.py

import json
import os
from collections import defaultdict

def load_config():
    """Loads the name resolution config file."""
    config_path = os.path.join(os.path.dirname(os.path.abspath(__file__)), 'config.json')
    if os.path.exists(config_path):
        with open(config_path, 'r', encoding='utf-8') as f:
            return json.load(f)
    return {}

def find_name(name_key, text_data):
    """General purpose name resolver for any given key."""
    if not name_key or not text_data:
        return None
    return text_data.get(name_key)

def resolve_creature_data(input_dir, output_file):
    """
    Resolves creature data by combining the base creature stats with resistances,
    reactions, and detailed spawner information from various master files.
    """
    try:
        print("Loading all necessary master files for creatures...")
        config = load_config()
        element_names_config = config.get("element_names", {})
        
        files_to_load = [
            'master_creature', 'master_text_EN', 'master_text_JA',
            'master_creature_element_resistance', 'master_creature_reaction_items',
            'master_creature_spawner_creatures', 'master_creature_spawner',
            'master_creature_spawner_spawn_positions', 'master_static_territory',
            'master_biome_territory', 'master_summon_territory'
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

        # --- Pre-compile Spawner Details for efficient lookup ---
        print("Pre-compiling spawner details...")
        spawner_positions_map = defaultdict(list)
        for pos in data['master_creature_spawner_spawn_positions'].get('list', []):
            spawner_positions_map[pos['spawnerId']].append(pos)

        static_territory_map = {t['creatureSpawnerId']: t for t in data['master_static_territory'].get('list', [])}
        biome_territory_map = {t['creatureSpawnerId']: t for t in data['master_biome_territory'].get('list', [])}
        summon_territory_map = {t['creatureSpawnerId']: t for t in data['master_summon_territory'].get('list', [])}

        spawner_details_map = {}
        for spawner in data['master_creature_spawner'].get('list', []):
            spawner_id = spawner['id']
            spawner_details_map[spawner_id] = spawner.copy()
            spawner_details_map[spawner_id]['spawn_positions'] = spawner_positions_map.get(spawner_id, [])
            if spawner_id in static_territory_map:
                spawner_details_map[spawner_id]['static_territory'] = static_territory_map[spawner_id]
            if spawner_id in biome_territory_map:
                spawner_details_map[spawner_id]['biome_territory'] = biome_territory_map[spawner_id]
            if str(spawner_id) in summon_territory_map: # Summon territory uses string IDs
                spawner_details_map[spawner_id]['summon_territory'] = summon_territory_map[str(spawner_id)]

        # --- Create maps for creature-specific data ---
        element_resistance_map = defaultdict(list)
        for res in data['master_creature_element_resistance'].get('list', []):
            # Resolve element name from config
            element_id_str = str(res.get('element'))
            element_info = element_names_config.get(element_id_str, {})
            res['elementName_EN'] = element_info.get('en')
            res['elementName_JA'] = element_info.get('ja')
            element_resistance_map[res['creatureId']].append(res)
        
        reaction_items_map = defaultdict(list)
        for reaction in data['master_creature_reaction_items'].get('list', []):
            reaction_items_map[reaction['creatureId']].append(reaction)

        spawner_creatures_map = defaultdict(list)
        for spawner_creature in data['master_creature_spawner_creatures'].get('list', []):
            spawner_creatures_map[spawner_creature['creatureId']].append(spawner_creature)

        # --- Resolve all creature data ---
        print("Resolving all creature information...")
        resolved_creatures_list = []
        for creature in data['master_creature'].get('list', []):
            resolved_creature = creature.copy()
            creature_id = creature['creatureId']

            # Resolve name
            name_key = creature.get('nameKey')
            resolved_creature['creatureName_EN'] = find_name(name_key, data['master_text_EN'])
            resolved_creature['creatureName_JA'] = find_name(name_key, data['master_text_JA'])

            # Attach related data
            resolved_creature['element_resistances'] = element_resistance_map.get(creature_id, [])
            resolved_creature['reaction_items'] = reaction_items_map.get(creature_id, [])
            
            # Resolve and attach spawner info
            resolved_spawners = []
            for spawner_link in spawner_creatures_map.get(creature_id, []):
                resolved_link = spawner_link.copy()
                spawner_id = spawner_link.get('spawnerId')
                if spawner_id in spawner_details_map:
                    resolved_link['spawner_details'] = spawner_details_map[spawner_id]
                resolved_spawners.append(resolved_link)
            resolved_creature['spawners'] = resolved_spawners
            
            resolved_creatures_list.append(resolved_creature)

        final_output = {"creatures": resolved_creatures_list}
        
        with open(output_file, 'w', encoding='utf-8') as f:
            json.dump(final_output, f, indent=4, ensure_ascii=False)
        print(f"\nSuccessfully resolved all creature data and saved to '{output_file}'")

    except Exception as e:
        print(f"An unexpected error occurred in the creature resolver: {e}")
        import traceback
        traceback.print_exc()

if __name__ == '__main__':
    INPUT_DIRECTORY = 'sandbox_dec'
    OUTPUT_FILE = 'resolved_creatures.json'
    if not os.path.exists(INPUT_DIRECTORY):
        os.makedirs(INPUT_DIRECTORY)
    resolve_creature_data(INPUT_DIRECTORY, OUTPUT_FILE)
