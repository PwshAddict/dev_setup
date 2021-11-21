
import-module posh-git
Set-PoshPrompt -Theme pixelrobots


if ($Host.Name -match "ConsoleHOst|Visual Studio Code Host") {
    Import-Module -Name PSReadline
}

Set-PSReadLineKeyHandler -Chord Tab -Function MenuComplete
Set-PSReadLineKeyHandler -key DownArrow -Function HistorySearchForward
Set-PSReadLineKeyHandler -key UpArrow -Function HistorySearchBackward
$psRlo = @{
    HistorySearchCursorMovesToEnd = $true
    BellStyle = 'None' 
    PredictionSource = 'History'
}

Set-PSReadLineOption @psRlo

# make git log easy to read
Function graph {
    git log --all --decorate --oneline --grash
}