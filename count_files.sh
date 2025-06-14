#!/bin/bash
if [ -z "$1" ]; then
  echo "Usage: $0 <absolute_directory_path>"
  exit 1
fi

if [ ! -d "$1" ]; then
  echo "'$1' is not a valid directory."
  exit 1
fi

file_count=$(find "$1" -type f | wc -l)
echo "Number of files in '$1': $file_count"

