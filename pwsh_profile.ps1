
Import-Module posh-git
Set-PoshPrompt -Theme pixelrobots

if ($IsWindows -or [string]::IsNullOrEmpty($IsWindows)) {
    # Chocolatey profile
    $ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
    if (Test-Path($ChocolateyProfile)) {
        Import-Module "$ChocolateyProfile"
    }
}

if ($Host.Name -match 'ConsoleHOst|Visual Studio Code Host') {
    Import-Module -Name PSReadline
}

Set-PSReadLineKeyHandler -Chord Tab -Function MenuComplete
Set-PSReadLineKeyHandler -key DownArrow -Function HistorySearchForward
Set-PSReadLineKeyHandler -key UpArrow -Function HistorySearchBackward
$psRlo = @{
    HistorySearchCursorMovesToEnd = $true
    BellStyle                     = 'None' 
   
}

if ($PSVersionTable.PSVersion -ge [version]'7.2') {
    $psRlo.Add('PredictionSource', 'History')
}

Set-PSReadLineOption @psRlo

# make git log easy to read
Function graph {
    git log --all --decorate --oneline --grash
}