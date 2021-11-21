
# Install powershell modules 
$modules = @(
    'posh-git'
    ,'oh-my-posh'

)
foreach ($mod in $modules) {
     Install-Module -Name $mod -AllowClobber -Force
}