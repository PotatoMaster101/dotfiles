Set-Alias 'cl' 'Clear-Host'
Set-Alias 'grep' 'Select-String'
Set-Alias 'guid' 'New-Guid'
Set-Alias 'i' 'Invoke-Item' && $(function i. { Invoke-Item '.' })
Set-Alias 'ipa' 'Get-NetIPAddress'
Set-Alias 'l' 'Get-ChildItem'
Set-Alias 'so' 'Select-Object'
Set-Alias 'ss' 'Get-NetTCPConnection'
Set-Alias 'time' 'Measure-Command'
Set-Alias 'touch' 'New-Item'
Set-Alias 'unzip' 'Expand-Archive'
Set-Alias 'wget' 'Invoke-WebRequest'
Set-Alias 'which' 'Get-Command'
Set-Alias 'xxd' 'Format-Hex'
Set-Alias 'zip' 'Compress-Archive'

if (Get-Command 'cargo' -ErrorAction Ignore) { Set-Alias 'cg' 'cargo' }
if (Get-Command 'code' -ErrorAction Ignore) { Set-Alias 'c' 'code'; function c. { code '.' } }
if (Get-Command 'docker' -ErrorAction Ignore) { Set-Alias 'd' 'docker' }
if (Get-Command 'dotnet' -ErrorAction Ignore) { Set-Alias 'dn' 'dotnet'; function dnc { dotnet nuget locals all -c } }
if (Get-Command 'git' -ErrorAction Ignore) { Set-Alias 'g' 'git' }
if (Get-Command 'nvim' -ErrorAction Ignore) { Set-Alias 'v' 'nvim'; function v. { nvim '.' } }
if (Get-Command 'python' -ErrorAction Ignore) { Set-Alias 'p' 'python'; Set-Alias 'py' 'python' }
if (Get-Command 'wt' -ErrorAction Ignore) { function s { Start-Process 'wt' -Verb RunAs -ArgumentList '--startingDirectory', '.' } }

function .. { Set-Location '../' }
function ... { Set-Location '../../' }
function q {
    Remove-Item -Recurse -Force -ErrorAction Ignore "$HOME\AppData\Local\nvim-data\shada"
    Remove-Item -Recurse -Force -ErrorAction Ignore "$HOME\_viminfo"
    Remove-Item -Recurse -Force -ErrorAction Ignore "$HOME\.bash_history"
    Remove-Item -Recurse -Force -ErrorAction Ignore "$HOME\.zsh_history"
    Remove-Item -Recurse -Force -ErrorAction Ignore "$HOME\.lesshst"
    Remove-Item -Recurse -Force -ErrorAction Ignore (Get-PSReadLineOption).HistorySavePath
    exit
}

$ErrorActionPreference = 'Stop'
