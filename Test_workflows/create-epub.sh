#!/bin/bash

# Script to correctly zip an EPUB directory into a valid .epub file.
# It prompts the user for the unzipped folder path and the output filename.

# --- Configuration ---
# Set to 'true' to delete the original unzipped directory after successful zipping.
# Use with CAUTION!
DELETE_ORIGINAL_DIR=false

# --- Script Logic ---

echo "--- EPUB Zipper for Debian ---"

# 1. Ask for the unzipped EPUB directory path
while true; do
    read -p "Enter the full path to your unzipped EPUB directory: " EPUB_DIR
    EPUB_DIR=$(echo "$EPUB_DIR" | sed 's/\/$//') # Remove trailing slash if present

    if [ -z "$EPUB_DIR" ]; then
        echo "Error: Path cannot be empty. Please try again."
    elif [ ! -d "$EPUB_DIR" ]; then
        echo "Error: Directory '$EPUB_DIR' not found. Please enter a valid path."
    else
        break # Valid directory found
    fi
done

# 2. Suggest an output filename and allow user to customize
BASE_NAME=$(basename "$EPUB_DIR")
# Suggest removing common suffixes and ensuring .epub extension
DEFAULT_FILENAME="${BASE_NAME%.*}" # Remove any existing extension
DEFAULT_FILENAME="${DEFAULT_FILENAME%_unzipped}" # Remove _unzipped suffix if present
DEFAULT_FILENAME="${DEFAULT_FILENAME}.epub" # Add .epub extension

read -p "Enter the desired output EPUB filename (default: $DEFAULT_FILENAME): " USER_FILENAME

# Use default if user input is empty
if [ -z "$USER_FILENAME" ]; then
    OUTPUT_FILENAME="$DEFAULT_FILENAME"
else
    # Ensure it ends with .epub
    if [[ ! "$USER_FILENAME" =~ \.epub$ ]]; then
        OUTPUT_FILENAME="${USER_FILENAME}.epub"
    else
        OUTPUT_FILENAME="$USER_FILENAME"
    fi
fi

# Define the output path for the .epub file (in the same parent directory as the source)
OUTPUT_EPUB_PATH="$(dirname "$EPUB_DIR")/$OUTPUT_FILENAME"

echo ""
echo "Source EPUB directory: $EPUB_DIR"
echo "Output EPUB file: $OUTPUT_EPUB_PATH"
echo ""

# Navigate into the EPUB directory
cd "$EPUB_DIR" || { echo "Error: Could not enter directory $EPUB_DIR"; exit 1; }

# Step 1: Create the mimetype file uncompressed
# The -q (quiet) suppresses output, -n (no compression) ensures mimetype is uncompressed.
# The 'mimetype' file must be the first entry and uncompressed.
zip -q -0 "$OUTPUT_EPUB_PATH" mimetype

if [ $? -ne 0 ]; then
    echo "Error: Failed to create mimetype. Check permissions or if '$OUTPUT_EPUB_PATH' is writeable."
    rm -f "$OUTPUT_EPUB_PATH" # Clean up partial file
    cd - > /dev/null # Go back to original directory
    exit 1
fi

# Step 2: Add all other files, compressing them
# -r (recurse paths), -D (do not create directory entries), -x (exclude patterns)
# We exclude the mimetype file because it's already added.
# We also exclude common hidden files/directories that can cause issues.
zip -q -r -D "$OUTPUT_EPUB_PATH" * -x "mimetype" "*.DS_Store" "__MACOSX" ".svn/*" ".git/*" "Thumbs.db"

if [ $? -eq 0 ]; then
    echo "Successfully created EPUB: $OUTPUT_EPUB_PATH"
    if [ "$DELETE_ORIGINAL_DIR" = true ]; then
        read -p "Do you want to delete the original unzipped directory '$EPUB_DIR'? (y/N): " CONFIRM_DELETE
        if [[ "$CONFIRM_DELETE" =~ ^[Yy]$ ]]; then
            echo "Deleting original directory..."
            rm -rf "$EPUB_DIR"
            if [ $? -eq 0 ]; then
                echo "Original directory deleted."
            else
                echo "Warning: Failed to delete original directory. Please check permissions."
            fi
        else
            echo "Original directory retained."
        fi
    fi
else
    echo "Error: Failed to create EPUB. Check the directory structure and permissions."
    # Clean up potentially corrupt partial .epub file
    rm -f "$OUTPUT_EPUB_PATH"
fi

# Return to the original directory where the script was run from
cd - > /dev/null

echo "--- Script Finished ---"
exit 0