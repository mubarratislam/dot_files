Steps :

Install Windows Terminal
Install Nard Font

Command: Set-ExecutionPolicy -ExecutionPolicy RemoteSigned

Command: winget install JanDeDobbeleer.OhMyPosh -s winget

Command: notepad $profile

Paste in the profile(Path of the theme): oh-my-posh --init --shell pwsh --config C:\Users\Nibir\AppData\Local\Programs\oh-my-posh\themes/modified_by_nibir_9.omp.json | Invoke-Expression

Command: Install-Module -Name Terminal-Icons -Repository PSGallery

Paste in profile: Import-Module -Name Terminal-Icons

Set-ExecutionPolicy -ExecutionPolicy Unrestricted

!!Important Links:

PSReadLines: https://www.powershellgallery.com/packages/PSReadLine/2.2.6

Install Caskaydiacove Nerd Font: https://www.nerdfonts.com/font-downloads

Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView

Scott Hanselman WT Tutorial: https://www.youtube.com/watch?v=VT2L1SXFq9U