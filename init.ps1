#Requires -PSEdition Core
#Requires -Version 7.3

Copy-Item "$PSScriptRoot/windows/Microsoft.PowerShell_profile.ps1" "$PROFILE" -Force
if (Get-Command 'git' -ErrorAction Ignore) {
    Copy-Item "$PSScriptRoot/common/.gitconfig" "$HOME/.gitconfig" -Force
}

Install-Module -Name Terminal-Icons -Repository PSGallery
winget install JanDeDobbeleer.OhMyPosh -s winget
Copy-Item "$PSScriptRoot/common/potatomaster101.omp.json" "$env:POSH_THEMES_PATH/potatomaster101.omp.json" -Force
oh-my-posh font install CascadiaCode
