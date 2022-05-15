Steps :
Install Windows Terminal

Install-Module oh-my-posh -Scope CurrentUser

notepad C:\Users\Nibir\Documents\PowerShell\Microsoft.PowerShell_profile.ps1

Import-Module oh-my-posh
oh-my-posh --init --shell pwsh --config C:\Users\Nibir\AppData\Local\Programs\oh-my-posh\themes/modified_by_nibir_9.omp.json | Invoke-Expression

https://ohmyposh.dev/docs/themes

Import-Module -Name Terminal-Icons

Set-ExecutionPolicy -ExecutionPolicy Unrestricted

Install Caskaydiacove Nerd Font 
https://www.nerdfonts.com/font-downloads

Install-Module PSReadLine -Force

Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView