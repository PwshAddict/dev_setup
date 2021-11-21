$InformationPreference = 'Continue'
# Install powershell modules 
$modules = @(
    'posh-git'
    , 'oh-my-posh'

)
foreach ($mod in $modules) {
    Write-Information -MessageData "Insatlling/upgrading module: [ $mod ]"
    if (Get-InstalledModule -Name $mod) {
        Write-Information -MessageData "updating [ $mod ] if needed."
        Update-Module -Name $mod 
    }
    else {
        Write-Information -MessageData "Installing: [ $mod ]"
        Install-Module -Name $mod -AllowClobber -Force
    }
}