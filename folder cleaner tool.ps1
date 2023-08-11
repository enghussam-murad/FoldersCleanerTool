
$target_folder = Read-Host("Enter the directory you need to check (ex C:\Users\user\Desktop\test):")

# Get all the subfolders
$subfolders = Get-ChildItem -Path $target_folder -Recurse -Directory

# Loop through each subfolder
foreach ($subfolder in $subfolders) {
  # Check if the subfolder is empty
  if ((Get-ChildItem -Path $subfolder.FullName).Count -eq 0) {
    # Delete the subfolder
    Remove-Item -Path $subfolder.FullName -Force
  }

}
