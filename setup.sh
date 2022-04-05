#!/bin/bash 

if [ $(whoami) == 'vagrant' ]; then
    echo "do not run this script inside vagrant"
    exit 1
fi

if [[ -z $(apt-get) ]]; then
    echo "run this script on debian based distro only"
    exit 1
fi


sudo apt-get update && sudo apt-get install -y git curl

sudo apt-get -f -y install

# virtualbox
curl https://download.virtualbox.org/virtualbox/6.1.32/virtualbox-6.1_6.1.32-149290~Ubuntu~xenial_amd64.deb --output /tmp/virtualbox.deb
sudo dpkg -i /tmp/virtualbox.deb

# vscode
curl "https://az764295.vo.msecnd.net/stable/e18005f0f1b33c29e81d732535d8c0e47cafb0b5/code_1.66.0-1648620611_amd64.deb" --output /tmp/vscode.deb
sudo dpkg -i /tmp/vscode.deb

# vagrant
curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -
sudo apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"
sudo apt-get update && sudo apt-get install -y vagrant
