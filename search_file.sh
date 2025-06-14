#!/bin/bash

# Ask for directory to search in
read -p "Enter the directory path to search in: " dir_path

# Check if directory exists
if [ ! -d "$dir_path" ]; then
  echo "Error: '$dir_path' is not a valid directory."
  exit 1
fi

# Ask for filename to search
read -p "Enter the filename to search for (e.g. notes.txt): " file_name

# Perform the search
found_path=$(find "$dir_path" -type f -name "$file_name" 2>/dev/null)

# Display result
if [ -z "$found_path" ]; then
  echo "❌ File '$file_name' not found in '$dir_path'."
else
  echo "✅ File found at: $found_path"
fi
