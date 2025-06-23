# Requires pycryptodome

import argparse
import os
import shutil
import tempfile
from Crypto.Cipher import AES
from Crypto.Util.Padding import unpad
from glob import glob

def decrypt_files(input_dir, output_dir):
    """
    Decrypts .dat files from an input directory to .json files in an output directory,
    using a temporary location for processing.
    """
    # 1. Create the output directory if it doesn't already exist.
    os.makedirs(output_dir, exist_ok=True)

    # 2. Create a secure temporary directory to work in.
    # This context manager automatically creates and cleans up the directory.
    with tempfile.TemporaryDirectory() as temp_dir:
        print(f"Created temporary directory: {temp_dir}")

        # Find all .dat files in the user-specified input directory.
        source_files = glob(os.path.join(input_dir, "*.dat"))

        if not source_files:
            print(f"Warning: No '.dat' files found in '{input_dir}'.")
            return

        # 3. Copy files from the input directory to the temporary directory.
        print(f"Copying {len(source_files)} files to the temporary directory for processing...")
        for src_file_path in source_files:
            # Copy the file to the root of the temporary directory
            shutil.copy(src_file_path, temp_dir)
        print("Copying complete.")

        # Process the copied files located in the temporary directory.
        processing_files = glob(os.path.join(temp_dir, "*.dat"))
        print("\nStarting decryption process...")

        for file_to_decrypt in processing_files:
            try:
                # Open the copied file for reading in binary mode.
                with open(file_to_decrypt, "rb") as f:
                    # Decrypt file content.
                    key = b"holoearthmasters"
                    iv = f.read(16)
                    cipher = AES.new(key, AES.MODE_CBC, iv=iv)
                    decrypted_data = unpad(cipher.decrypt(f.read()), AES.block_size)

                    # Construct the final output path dynamically.
                    base_filename = os.path.basename(file_to_decrypt)
                    output_filename = os.path.splitext(base_filename)[0] + ".json"
                    final_output_path = os.path.join(output_dir, output_filename)

                    # Write the decrypted content to the output file.
                    with open(final_output_path, "wb") as g:
                        g.write(decrypted_data)
                    
                    print(f"SUCCESS: Decrypted {os.path.basename(file_to_decrypt)} -> {output_filename}")

            except Exception as e:
                # Report any errors without crashing the script.
                print(f"ERROR: Failed to process {os.path.basename(file_to_decrypt)}. Reason: {e}")

    print(f"\nDecryption process finished. Temporary directory has been removed.")
    print(f"Decrypted files are located in: {output_dir}")


def main():
    """
    Parses command-line arguments and initiates the decryption process.
    """
    parser = argparse.ArgumentParser(
        description="Decrypts .dat files from an input directory to an output directory.",
        formatter_class=argparse.RawTextHelpFormatter
    )
    
    parser.add_argument(
        "input_dir",
        help="The full path to the directory containing the .dat files."
    )
    
    parser.add_argument(
        "output_dir",
        help="The full path to the directory where decrypted .json files will be saved."
    )
    
    args = parser.parse_args()
    
    decrypt_files(args.input_dir, args.output_dir)
    print(f"If the decryption was successful, please run the resolver to generate the resolved json recipies list.")

if __name__ == "__main__":
    main()