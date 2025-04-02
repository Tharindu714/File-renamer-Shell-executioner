#!/bin/bash

echo "=== 🔄 Bulk File Renamer ==="

# Get the directory path
read -p "Enter the directory path: " dir

# Convert Windows path to Unix-style if needed
dir=$(echo "$dir" | sed 's/\\/\//g' | sed 's/C:/\/c/')

# Get the text to replace
read -p "Enter the text to replace: " old_text

# Get the new text
read -p "Enter the new text: " new_text

# Check if directory exists
if [ ! -d "$dir" ]; then
    echo "❌ Error: Directory does not exist!"
    exit 1
fi

# Loop through all files in the directory
for file in "$dir"/*; do
    # Check if the filename contains the text to replace
    if [[ "$file" == *"$old_text"* ]]; then
        # Create new filename by replacing text
        new_file="${file//$old_text/$new_text}"
        
        # Rename file
        mv "$file" "$new_file"
        echo "✅ Renamed: $(basename "$file") → $(basename "$new_file")"
    fi
done

echo "🎉 Bulk renaming complete!"
