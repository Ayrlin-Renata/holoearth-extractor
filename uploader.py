import json
import os
import mwclient
from dotenv import load_dotenv

# --- SCRIPT CONFIGURATION ---
CONFIG_FILE = 'wiki_config.json'

# Load environment variables from .env file
load_dotenv()

def update_wiki_pages():
    """
    Reads configuration from a JSON file, connects to the specified MediaWiki site,
    and updates module pages with the content of local Lua files.
    Credentials are loaded from a .env file.
    """
    print("Starting MediaWiki module update process...")

    # 1. Load Configuration
    if not os.path.exists(CONFIG_FILE):
        print(f"Error: Configuration file '{CONFIG_FILE}' not found.")
        return

    try:
        with open(CONFIG_FILE, 'r') as f:
            config = json.load(f)
        wiki_config = config.get('wiki', {})
        page_mappings = config.get('page_mappings', [])
    except json.JSONDecodeError:
        print(f"Error: Could not parse '{CONFIG_FILE}'. Please ensure it is valid JSON.")
        return
    except Exception as e:
        print(f"An error occurred while reading the config file: {e}")
        return
        
    # 2. Get Credentials from Environment
    wiki_username = os.getenv("WIKI_USERNAME")
    wiki_password = os.getenv("WIKI_PASSWORD")

    if not wiki_username or not wiki_password:
        print("Error: 'WIKI_USERNAME' and 'WIKI_PASSWORD' must be set in your .env file.")
        print("Please create a .env file and add these values.")
        return

    # 3. Connect and Login to the Wiki
    try:
        print(f"Connecting to wiki at '{wiki_config.get('url')}'...")
        # Note: mwclient handles the scheme (http/https) automatically.
        # It requires the path to the api.php file.
        site = mwclient.Site(wiki_config.get('url'), path='/')
        site.login(wiki_username, wiki_password)
        print("Successfully logged in.")
    except mwclient.errors.LoginError as e:
        print(f"Error: Login failed. Please check your credentials in the .env file. Details: {e}")
        return
    except Exception as e:
        print(f"An error occurred while connecting to the wiki: {e}")
        return

    # 4. Process each file-to-page mapping
    if not page_mappings:
        print("Warning: No page mappings found in the config file. Nothing to do.")

    success_count = 0
    fail_count = 0

    for mapping in page_mappings:
        local_file = mapping.get('local_file')
        wiki_page_title = mapping.get('wiki_page')

        if not local_file or not wiki_page_title:
            print(f"Skipping invalid mapping: {mapping}")
            fail_count += 1
            continue

        print(f"\nProcessing mapping: '{local_file}' -> '{wiki_page_title}'")

        # 5. Read the local file content
        try:
            with open(local_file, 'r', encoding='utf-8') as f:
                new_content = f.read()
            print(f"  - Successfully read content from '{local_file}'.")
        except FileNotFoundError:
            print(f"  - Error: Local file not found at '{local_file}'. Skipping.")
            fail_count += 1
            continue
        except Exception as e:
            print(f"  - Error: Could not read file '{local_file}': {e}. Skipping.")
            fail_count += 1
            continue

        # 6. Get the page and update it
        try:
            page = site.pages[wiki_page_title]
            
            # Check if the content is actually different to avoid unnecessary edits
            if page.text() == new_content:
                print(f"  - Content for '{wiki_page_title}' is already up-to-date. No edit needed.")
                success_count += 1
                continue

            edit_summary = "Automated update from Python script"
            page.edit(new_content, summary=edit_summary)
            print(f"  - Successfully updated page '{wiki_page_title}'.")
            success_count += 1
        except Exception as e:
            print(f"  - Error: Failed to update page '{wiki_page_title}'. Details: {e}")
            fail_count += 1

    print("\n--------------------")
    print("Update process finished.")
    print(f"Successful updates: {success_count}")
    print(f"Failed updates: {fail_count}")
    print("--------------------")


if __name__ == '__main__':
    update_wiki_pages()

