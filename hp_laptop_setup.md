
# Install stuff

## install chocolatey
``` powershell
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
```

### install Windows Terminal
``` powershell
choco install microsoft-windows-terminal -y
```

#### Setup Windows Terminal
Configure pwsh as default sheel

### install VSCode 
``` powershell
choco install vscode -y
```

#### Setup VScode

#### Install Pwsh stuff
``` powershell
$modules = @(
    'pwsh'
    ,'git'
)
foreach ($mod in $modules) {
    choco install $mod -y
}
```

### Setup GIT
``` powershell

git config --global user.email "pwshaddict@scottmiller.dev"
git config --global user.name "Scott Miller"
```

### setup WSL
https://docs.microsoft.com/en-us/windows/wsl/install

This will install WSL2 with ubuntu (default)
```
wsl --install
```

Run this in all distros
```
sudo apt update && sudo apt upgrade
```
