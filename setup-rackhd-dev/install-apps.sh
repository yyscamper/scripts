#!/bin/bash

set -e

# required
sudo apt-get -y install git
sudo apt-get -y install vim
sudo apt-get -y install samba
sudo apt-get -y install silversearcher-ag
sudo apt-get -y install ruby-full
sudo apt-get -y install httpie

# install node.js
wget -qO- https://raw.githubusercontent.com/xtuple/nvm/master/install.sh | sudo bash
nvm install 0.10
nvm install 4
nvm install 5
nvm alias default 0.10

# optional
sudo apt-get -y install python-pip
sudo apt-get -y install python-setuptools
sudo apt-get -y install python-dev
sudo apt-get -y install pylint
sudo apt-get -y install socat
sudo apt-get -y install tree
sudo apt-get -y install ctags
sudo apt-get -y install libxml2-utils
sudo apt-get -y install cifs-utils

