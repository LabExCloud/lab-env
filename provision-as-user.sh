#!/bin/bash 

# curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash
# 
# source ~/.bashrc
# 
# nvm install v16.10.0

mkdir -p /home/vagrant/.local/bin
echo 'export PATH=/home/vagrant/.local/bin:$PATH' >> .bashrc

NODE=node-v16.14.2-linux-x64

curl https://nodejs.org/dist/v16.14.2/$NODE.tar.xz --output /tmp/$NODE.tar.xz
mkdir ~/.local
tar -xvf /tmp/$NODE.tar.xz -C ~/.local/ 
echo 'export PATH=/home/vagrant/.local/'$NODE'/bin:$PATH' >> .bashrc

echo "cd /vagrant" >> .bashrc
