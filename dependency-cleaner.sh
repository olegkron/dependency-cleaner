#!/bin/bash

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
NC='\033[0m' # No Color

# Checks if the input directory exists
if [ ! -d "$1" ]; then
  echo -e "${RED}Error: $1 is not a directory or does not exist${NC}"
  exit 1
fi

if [ -z "$2" ]; then
  depth=3
else
  if ! [[ "$2" =~ ^[0-9]+$ ]]; then
    echo -e "${RED}Error: Invalid value for maximum depth: $2${NC}"
    exit 1
  fi
  depth=$2
fi

# List of folders to search for
folders=("node_modules" ".cache" "__pycache__" "target" "venv" "env" "go/pkg")

# Find folders
found_folders=()
for folder in "${folders[@]}"; do
  echo -e "${YELLOW}Searching for $folder folders in $1... (max depth: $depth)${NC}"
  current_found=$(find "$1" -mindepth 2 -maxdepth "$depth" -name "$folder" -type d 2>/dev/null)
  if [ $? -ne 0 ]; then
    echo -e "${RED}Error: Failed to search for $folder folders${NC}"
    continue
  fi
  found_folders+=($current_found)
done

if [ ${#found_folders[@]} -eq 0 ]; then
  echo -e "${RED}No target folders found in $1${NC}"
  exit 0
fi

# Calculate total size
total_size=$(du -shc ${found_folders[@]} | tail -1 | awk '{print $1}')

# Print summary
echo -e "${GREEN}Found ${#found_folders[@]} target folders of total size $total_size in the following folders:${NC}"
index=0
for folder in "${found_folders[@]}"; do
  project_folder=$(dirname "$folder")
  project_name=$(basename "$project_folder")
  size=$(du -sh "$folder" | awk '{print $1}')
  echo "[$index] $project_name - $size"
  index=$((index+1))
done

# Prompt user for deletion
echo -e "\nEnter the index number(s) of the folders to delete (separated by a space).\nTo delete all, press enter. To quit, type 'q':"
read -a folders_to_delete
if [ "${folders_to_delete[0]}" == "q" ]; then
  echo "Aborted"
  exit 0
elif [ ${#folders_to_delete[@]} -eq 0 ]; then
  folders_to_delete=($(seq 0 $((index-1))))
fi

# Delete folders
total_size_deleted=0
for i in "${folders_to_delete[@]}"; do
  if [ $i -lt 0 ] || [ $i -ge $index ]; then
    echo "Error: Invalid index: $i"
    continue
  fi
  folder=${found_folders[$i]}
  project_folder=$(dirname "$folder")
  project_name=$(basename "$project_folder")
  size=$(du -sh "$folder" | awk '{print $1}')
  echo "Removing $folder for $project_name ($size)..."
  rm -rf "$folder"
  size_in_bytes=$(numfmt --from=iec $size)
  total_size_deleted=$(echo $total_size_deleted + $size_in_bytes | bc)
done

echo -e "${GREEN}Done, Total space saved: $(numfmt --to=iec-i --suffix=B $total_size_deleted)${NC}"
