Write-Host "=== 🔄 Bulk File Renamer ==="

$DIR = Read-Host "Enter the directory path"
$OLD_TEXT = Read-Host "Enter the text to replace"
$NEW_TEXT = Read-Host "Enter the new text"

Get-ChildItem -Path $DIR | ForEach-Object {
    $NEW_NAME = $_.Name -replace $OLD_TEXT, $NEW_TEXT
    Rename-Item $_.FullName -NewName $NEW_NAME
}

Write-Host "✅ Renaming complete!"
