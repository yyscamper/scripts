#!/bin/bash

#backup
mkdir -p ~/backup
cp /etc/apt/sources.list ~/backup
cp ~/.bashrc ~/backup
cp ~/.vimrc ~/backup
cp -rf ~/.ssh ~/backup
cp ~/.npmrc ~/backup
cp ~/.cnpmrc ~/backup
cp /etc/samba/smb.conf ~/backup
cp ~/.tern-project ~/backup
cp ~/.jshintrc ~/backup
cp ~/.pylintrc ~/backup

#network
cat net-interfaces | sudo tee -a /etc/network/interfaces

# apt source
sudo cp /etc/apt/sources.list /etc/apt/sources.list.backup
sudo cp sources.list /etc/apt/sources.list
sudo apt-get update

# install utilities
sudo apt-get -y install git
sudo apt-get -y install vim
sudo apt-get -y install samba
sudo apt-get -y install openssh-server
sudo apt-get -y install silversearcher-ag
sudo apt-get -y install ruby-full
sudo apt-get -y install httpie
sudo apt-get -y install python-pip
sudo apt-get -y install python-setuptools
sudo apt-get -y install python-dev
sudo apt-get -y install pylint
sudo apt-get -y install socat
sudo apt-get -y install tree
sudo apt-get -y install ctags
sudo apt-get -y install libxml2-utils
sudo apt-get -y install cifs-utils

#ssh
mkdir ~/.ssh
cp ssh/* ~/.ssh

# install node.js and related packages
#cat npmrc >> ~/.npmrc
#cat cnpmrc >> ~/.npmrc
#cp tern-project ~/.tern-project
#npm config set strict-ssl false
#npm config set registry https://registry.npm.taobao.org
cp jshintrc ~/.jshintrc

# npm install -g cnpm --registry=https://registry.npm.taobao.orgs

# config vim
# git clone https://github.com/yyscamper/vimconfig.git ~/config/vimconfig
# ln -s ~/config/vimconfig/vimrc ~/.vimrc
# #git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
mkdir ~/.vim
cp -rf vimfiles/* ~/.vim

# config git
git config --global user.email felix.yuan@emc.com
git config --global user.name "Felix Yuan"
cp gitignore ~/.gitignore-global
git config --global core.exculdesfile ~/.gitignore-global
git config --global url."https://yyscamper@github.com".insteadOf "https://github.com"
git config --global credential.helper 'cache --timeout=144000'
git config --global core-editor "vim"

# config samba
cat smb.conf | sudo tee -a /etc/samba/smb.conf
sudo iptables -I INPUT 4 -m state --state NEW -m udp -p udp --dport 137 -j ACCEPT
sudo iptables -I INPUT 5 -m state --state NEW -m udp -p udp --dport 138 -j ACCEPT
sudo iptables -I INPUT 6 -m state --state NEW -m tcp -p tcp --dport 139 -j ACCEPT

# config bash
cat bashrc >> ~/.bashrc
source ~/.bashrc
echo TZ='Asia/Hong_Kong'; export TZ >> ~/.profile

#./setup_src.sh

# misc
sudo ufw allow 8080
sudo ufw disable
mkdir -p ~/util
cp util/* ~/util
sudo gem install mdl

# npm packages
npm install -g prettyjson
npm install -g jshint
npm install -g node-inspector
npm install -g jsctags
npm install -g esctags
npm install -g jsonlint
#npm install -g eslint
npm install -g vimlint
npm install -g js-yaml
npm install -g istanbul
npm install -g mocha
npm install -g jq

# python packages
sudo pip install virtualenv
sudo pip install flake8
sudo pip install pylint
sudo pip install bashate

cp pylintrc ~/.pylintrc
