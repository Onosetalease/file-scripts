#!/bin/bash

# Prompt for file path
read -p "Enter the full path to the file you want to back up: " file_path

# Check if file exists
if [ ! -f "$file_path" ]; then
  echo "Error: '$file_path' is not a valid file."
  exit 1
fi

# Create backup folder if it doesn't exist
backup_dir="./backup"
mkdir -p "$backup_dir"

# Get the filename and date
filename=$(basename "$file_path")
date_stamp=$(date +%F)  # Format: YYYY-MM-DD

# Create backup filename
backup_filename="${filename%.*}_$date_stamp.${filename##*.}"

# Copy the file
cp "$file_path" "$backup_dir/$backup_filename"

echo "✅ Backup created: $backup_dir/$backup_filename"
