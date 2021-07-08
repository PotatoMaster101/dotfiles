########################################################################################################################
# Sets up dot files.
########################################################################################################################

#Requires -PSEdition Core
#Requires -Version 7.0
#Requires -RunAsAdministrator

Copy-Item "$PSScriptRoot\windows\Profile.ps1" "$PSHOME\Profile.ps1" -Force
if (Get-Command 'git' -ErrorAction SilentlyContinue) {
    Copy-Item "$PSScriptRoot\common\.gitconfig" "$HOME\.gitconfig" -Force
}
