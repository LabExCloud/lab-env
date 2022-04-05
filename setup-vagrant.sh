#!/bin/bash 

sudo apt-get update && sudo apt-get install -y git curl

curl https://download.virtualbox.org/virtualbox/6.1.32/virtualbox-6.1_6.1.32-149290~Ubuntu~xenial_amd64.deb --output /tmp/virtualbox.deb
dpkg -i /tmp/virtualbox.deb

curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -
sudo apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"
sudo apt-get update && sudo apt-get install -y vagrant
