#!/bin/bash

# Prompt for directory path
read -p "Enter the directory path: " dir_path

# Create the directory if it doesn't exist
if [ ! -d "$dir_path" ]; then
  mkdir -p "$dir_path"
  echo "Directory created: $dir_path"
else
  echo "Directory already exists: $dir_path"
fi

# Navigate into the directory
cd "$dir_path" || exit

# Prompt for filename
read -p "Enter the filename to create: " file_name

# Create the file
touch "$file_name"
echo "File '$file_name' created in '$dir_path'"

