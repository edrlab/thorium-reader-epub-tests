#!/bin/bash

# Define the input folder containing the EPUB contents
input_folder=""

# Define the output EPUB file name (with the .epub extension)
output_file="a"

# Change to the parent directory of the input folder
cd "$(dirname "$input_folder")"

# Zip the contents of the input folder into the output EPUB file
zip -X0 "$output_file" -r "$input_folder"/*

# Verify the EPUB file has been created
if [ -f "$output_file" ]; then
  echo "EPUB file '$output_file' created successfully."
else
  echo "Failed to create EPUB file."
fi

# Save the script to a file, and make it executable by running:
# chmod +x createepub.sh

# execute the script to create the EPUB file:
# ./createepub.sh