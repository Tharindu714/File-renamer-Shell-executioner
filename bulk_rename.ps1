# Bulk File Renamer in PowerShell
Write-Host "=== 🔄 Bulk File Renamer ==="

# Get the directory path
$dir = Read-Host "Enter the directory path"

# Validate if directory exists
if (!(Test-Path -Path $dir -PathType Container)) {
    Write-Host "❌ Error: Directory does not exist!"
    exit
}

# Get the text to replace
$oldText = Read-Host "Enter the text to replace"

# Get the new text
$newText = Read-Host "Enter the new text"

# Get all matching files
$files = Get-ChildItem -Path $dir | Where-Object { $_.Name -match $oldText }

if ($files.Count -eq 0) {
    Write-Host "⚠️ No files found containing '$oldText'."
    exit
}

# Rename each matching file
foreach ($file in $files) {
    $newName = $file.Name -replace [regex]::Escape($oldText), $newText
    $newPath = Join-Path -Path $dir -ChildPath $newName
    
    Rename-Item -Path $file.FullName -NewName $newName
    Write-Host "✅ Renamed: $($file.Name) → $newName"
}

Write-Host "🎉 Bulk renaming complete!"
