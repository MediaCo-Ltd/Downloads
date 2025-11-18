# PowerShell script to zip all .exe files in C:\Applications
# Each exe gets its own zip file with the same base name

$sourceFolder = "C:\Applications"
$destinationFolder = "C:\Applications"

# Get all .exe files
$exeFiles = Get-ChildItem -Path $sourceFolder -Filter "*.exe"

foreach ($exe in $exeFiles) {
    # Get the base name without extension (e.g., "AddOrderRef" from "AddOrderRef.exe")
    $baseName = [System.IO.Path]::GetFileNameWithoutExtension($exe.Name)

    # Create zip file name
    $zipFileName = "$baseName.zip"
    $zipFilePath = Join-Path $destinationFolder $zipFileName

    # Remove existing zip if it exists
    if (Test-Path $zipFilePath) {
        Remove-Item $zipFilePath -Force
    }

    # Create the zip file
    Compress-Archive -Path $exe.FullName -DestinationPath $zipFilePath -CompressionLevel Optimal

    Write-Host "Created: $zipFileName"
}

Write-Host "`nDone! Created $($exeFiles.Count) zip files."
