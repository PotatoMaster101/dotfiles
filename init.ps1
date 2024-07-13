#Requires -PSEdition Core
#Requires -Version 7.3

winget install JanDeDobbeleer.OhMyPosh -s winget
Copy-Item "$PSScriptRoot/common/potatomaster101.omp.json" "$env:POSH_THEMES_PATH/potatomaster101.omp.json" -Force
Copy-Item "$PSScriptRoot/windows/Microsoft.PowerShell_profile.ps1" "$PROFILE" -Force

if (Get-Command 'git' -ErrorAction Ignore) {
    Copy-Item "$PSScriptRoot/common/.gitconfig" "$HOME/.gitconfig" -Force
}
if (!(Get-InstalledModule -Name Terminal-Icons -ErrorAction Ignore)) {
    Install-Module -Name Terminal-Icons -Repository PSGallery
}
if (!(Test-Path "$env:LOCALAPPDATA/Microsoft/Windows/Fonts/CaskaydiaCoveNerdFont-Regular.ttf")) {
    oh-my-posh font install CascadiaCode --user
}
