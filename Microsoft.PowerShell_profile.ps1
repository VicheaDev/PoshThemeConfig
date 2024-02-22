#  oh-my-posh init pwsh --config ~/clean-detailed.omp.json | Invoke-Expression
#oh-my-posh init pwsh --config 'C:\Users\smart\AppData\Local\Programs\oh-my-posh\themes\neko.omp.json' | Invoke-Expression
# oh-my-posh init pwsh --config 'https://raw.githubusercontent.com/clean-detailed/oh-my-posh/main/themes/jandedobbeleer.omp.json' | Invoke-Expression

Import-Module -Name Terminal-Icons

# PSReadLine
Set-PSReadLineOption -EditMode Emacs
Set-PSReadLineOption -BellStyle None
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView

Set-PSReadLineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadLineKeyHandler -Key DownArrow -Function HistorySearchForward

$Themes = "C:\Users\smart\AppData\Local\Programs\oh-my-posh\themes\"
$RandomTheme = Get-ChildItem $Themes -name | Select-Object -index $(Random $((Get-ChildItem $Themes).Count))
oh-my-posh init pwsh --config "$Themes\$RandomTheme" | Invoke-Expression