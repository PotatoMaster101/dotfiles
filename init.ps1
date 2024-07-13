#Requires -PSEdition Core
#Requires -Version 7.3

Copy-Item "$PSScriptRoot/windows/Microsoft.PowerShell_profile.ps1" "$PROFILE" -Force
if (Get-Command 'git' -ErrorAction Ignore) {
    Copy-Item "$PSScriptRoot/common/.gitconfig" "$HOME/.gitconfig" -Force
}
New-Item -ItemType Directory -Path "$HOME/.omp/themes/" -Force | Out-Null
Copy-Item "$PSScriptRoot/common/potatomaster101.omp.json" "$HOME/.omp/themes/potatomaster101.omp.json" -Force

Install-Module -Name Terminal-Icons -Repository PSGallery
