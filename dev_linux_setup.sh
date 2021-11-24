
# keep your stuff updated bojo
sudo apt update -y && sudo apt upgrade -y

# install SSH
sudo apt install ssh

# install git
sudo apt install git

#### install pwsh on Linux
# https://docs.microsoft.com/en-us/powershell/scripting/install/installing-powershell-on-linux?view=powershell-7.2

cd /tmp/ 
# Download the Microsoft repository GPG keys
wget https://packages.microsoft.com/config/debian/10/packages-microsoft-prod.deb

# Register the Microsoft repository GPG keys
sudo dpkg -i packages-microsoft-prod.deb

# Update the list of products
sudo apt-get update

# Install PowerShell
sudo apt-get install -y powershell

# Start PowerShell
pwsh -v

# setup dev folders
cd ~
[ -d ~/sources/ ] && mkdir sources/
[ -d ~/sources/github ] && mkdir sources/github
