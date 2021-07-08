#######################################################################################################################
# Profile for PowerShell Core. Save as `$PSHOME\Profile.ps1`.
#######################################################################################################################

#Requires -PSEdition Core
#Requires -Version 7.1

# Resets console colour
function Reset-ConsoleColor {
    $Host.UI.RawUI.BackgroundColor = 'Black'
    $Host.UI.RawUI.ForegroundColor = 'Green'
    $Host.PrivateData.ErrorBackgroundColor = 'Black'
    $Host.PrivateData.ErrorForegroundColor = 'Red'
    $Host.PrivateData.WarningBackgroundColor = 'Black'
    $Host.PrivateData.WarningForegroundColor = 'Yellow'
    $Host.PrivateData.VerboseBackgroundColor = 'Black'
    $Host.PrivateData.VerboseForegroundColor = 'Yellow'
    $Host.PrivateData.ProgressBackgroundColor = 'DarkCyan'
    $Host.PrivateData.ProgressForegroundColor = 'Yellow'
}

# Prompt
function prompt {
    $noerr = $?
    Reset-ConsoleColor      # stop commands from messing up colours
    Write-Host '┌───┤' -NoNewline -ForegroundColor DarkGray
    if (Test-Path 'Env:\USERNAME') {
        Write-Host " $env:USERNAME " -NoNewline -ForegroundColor Cyan
    }
    Write-Host " $(Get-Date -Format 'HH:mm:ss') " -NoNewline -ForegroundColor Magenta
    Write-Host " $(Get-Location) " -NoNewline -ForegroundColor DarkGreen
    if (!$noerr) {
        Write-Host ' X ' -NoNewline -ForegroundColor Red
    }
    Write-Host '├───┐' -ForegroundColor DarkGray
    Write-Host '└╼' -NoNewline -ForegroundColor DarkGray
    return ' '
}

# Aliases
function .. { Set-Location '..\' }
function ... { Set-Location '..\..\' }
Set-Alias 'cl' 'Clear-Host'
Set-Alias 'grep' 'Select-String'
Set-Alias 'guid' 'New-Guid'
Set-Alias 'ipa' 'Get-NetIPAddress'
Set-Alias 'l' 'Get-ChildItem'
Set-Alias 'rand' 'Get-Random'
Set-Alias 'so' 'Select-Object'
Set-Alias 'ss' 'Get-NetTCPConnection'
Set-Alias 'time' 'Measure-Command'
Set-Alias 'touch' 'New-Item'
Set-Alias 'unzip' 'Expand-Archive'
Set-Alias 'wget' 'Invoke-WebRequest'
Set-Alias 'which' 'Get-Command'
Set-Alias 'xxd' 'Format-Hex'
Set-Alias 'zip' 'Compress-Archive'

Get-Command 'code' -ErrorAction SilentlyContinue | Out-Null && Set-Alias 'c' 'code' && $(function c. { code . })
Get-Command 'docker' -ErrorAction SilentlyContinue | Out-Null && Set-Alias 'dc' 'docker'
Get-Command 'dotnet' -ErrorAction SilentlyContinue | Out-Null && Set-Alias 'dn' 'dotnet' && $(function dnc { dn nuget locals all -c })
Get-Command 'git' -ErrorAction SilentlyContinue | Out-Null && Set-Alias 'g' 'git'

Get-Command 'Clear-ProgramHistory.ps1' -ErrorAction SilentlyContinue | Out-Null && $(function q { Clear-ProgramHistory.ps1 -Force; exit }) || $(function q { exit })
Get-Command 'Get-EnvPath.ps1' -ErrorAction SilentlyContinue | Out-Null && Set-Alias 'genp' 'Get-EnvPath.ps1'
Get-Command 'Reset-Git.ps1' -ErrorAction SilentlyContinue | Out-Null && Set-Alias 'gn' 'Reset-Git.ps1'
Get-Command 'Spawn-AsAdmin.ps1' -ErrorAction SilentlyContinue | Out-Null && Set-Alias 'sudo' 'Spawn-AsAdmin.ps1'
Get-Command 'Update-Pip.ps1' -ErrorAction SilentlyContinue | Out-Null && Set-Alias 'pipup' 'Update-Pip.ps1'
