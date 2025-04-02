#!/bin/bash

echo "=== 🔄 Bulk File Renamer ==="
echo "Enter the directory path:"
read DIR

echo "Enter the text to replace:"
read OLD_TEXT

echo "Enter the new text:"
read NEW_TEXT

for FILE in "$DIR"/*; do
    NEW_NAME=$(echo "$FILE" | sed "s/$OLD_TEXT/$NEW_TEXT/g")
    mv "$FILE" "$NEW_NAME"
done

echo "✅ Renaming complete!"
