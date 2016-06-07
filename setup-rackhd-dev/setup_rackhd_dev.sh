#!/bin/bash

sudo mkdir -p /etc/network/interfaces.d
sudo cp rackhd/interfaces.d/* /etc/network/interfaces.d

sudo apt-get install ipmitool

# install apps
sudo apt-get -y install mongodb
# sudo service mongodb start

sudo apt-get -y install rabbitmq-server
# rabbitmq-server

sudo apt-get -y install isc-dhcp-server

# install npm package
npm install -g pretty-json
npm install -g mocha

# git config
git config --global user.email felix.yuan@emc.com
git config --global user.name "Felix Yuan"
cp gitignore ~/.gitignore-global
git config --global core.exculdesfile ~/.gitignore-global
git config --global url."https://yyscamper@github.com".insteadOf "https://github.com"
git config --global credential.helper 'cache --timeout=144000'
git config --global core.editor "vim"

# clone source code
mkdir ~/src

echo "prefix=~/src/npm" >> ~/.npmrc

npm install -g mocha
npm install -g prettyjson

sudo cp rackhd_config.json /opt/monorail/config.json

repo=on-core
cd ~/src
git clone https://github.com/yyscamper/$repo.git
cd ~/src/$repo
git remote add upstream https://github.com/RackHD/$repo.git
npm install

repo=on-tasks
cd ~/src
git clone https://github.com/yyscamper/$repo.git
cd ~/src/$repo
git remote add upstream https://github.com/RackHD/$repo.git
npm install
npm link ../on-core

repo=on-taskgraph
cd ~/src
git clone https://github.com/yyscamper/$repo.git
cd ~/src/$repo
git remote add upstream https://github.com/RackHD/$repo.git
npm install
npm link ../on-core
npm link ../on-tasks

repo=on-http
cd ~/src
git clone https://github.com/yyscamper/$repo.git
cd ~/src/$repo
git remote add upstream https://github.com/RackHD/$repo.git
npm install
npm link ../on-core
npm link ../on-tasks

repo=on-dhcp-proxy
cd ~/src
git clone https://github.com/yyscamper/$repo.git
cd ~/src/$repo
git remote add upstream https://github.com/RackHD/$repo.git
npm install
npm link ../on-core

repo=on-tftp
cd ~/src
git clone https://github.com/yyscamper/$repo.git
cd ~/src/$repo
git remote add upstream https://github.com/RackHD/$repo.git
npm install
npm link ../on-core

repo=on-syslog
cd ~/src
git clone https://github.com/yyscamper/$repo.git
cd ~/src/$repo
git remote add upstream https://github.com/RackHD/$repo.git
npm install
npm link ../on-core

repo=docs
cd ~/src
git clone https://github.com/yyscamper/$repo.git
cd ~/src/$repo
git remote add upstream https://github.com/RackHD/$repo.git

repo=RackHD
cd ~/src
git clone https://github.com/yyscamper/$repo.git
cd ~/src/$repo
git remote add upstream https://github.com/RackHD/$repo.git

repo=on-skupack
cd ~/src
git clone https://github.com/yyscamper/$repo.git
cd ~/src/$repo
git remote add upstream https://github.com/RackHD/$repo.git

repo=on-imagebuilder
cd ~/src
git clone https://github.com/yyscamper/$repo.git
cd ~/src/$repo
git remote add upstream https://github.com/RackHD/$repo.git

# repo=onserve
# cd ~/src
# git clone https://github.com/yyscamper/$repo.git
# cd ~/src/$repo
# git remote add upstream https://github.com/RackHD/$repo.git
