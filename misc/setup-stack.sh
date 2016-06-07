#!/bin/bash

stack=2
myserver=10.62.59.200
myuser=yuanf
mypassword=yuanf

set -e

echo "configure network start ...";
echo "\
auto eth0 \
iface eth0 inet static \
address 192.168.128.$stack0 \
gateway 192.168.128.1 \
netmask 255.255.192.0 \
network 192.168.128.0 \
dns-nameservers 10.254.174.10 \
" | sudo tee -a /etc/network/interfaces.d/lab.cfg
echo "configure network end.";

echo "configure sources and install app start ..."
sudo wget -O /etc/apt/sources.list http://10.62.59.209/static/misc/sources.list
sudo apt-get -y install vim git httpie
echo "configure sources and install app end"

echo "configure npm & PATH start ..."
echo "prefix=~/src/npm" >> ~/.npmrc
echo "export PATH=\$PATH:~/src/npm/bin" >> ~/.bashrc
echo "configure npm & PATH stop"

echo "configure src start ..."
mkdir -p ~/src
sudo mount -t cifs -o user=$myuser,password=$mypassword,rw //$myserver/onrack/src ~/src
echo "configure src end"

echo "configure os repo start ..."
for os in $("esxi rhel centos suse");
do
    sudo mkdir -p /var/renasar/on-http/static/http/$os
    sudo mount -t cifs //10.62.59.130/infrastructure/nfs-maglev-image/html/static/mirrors/$os /var/renasar/on-http/static/http/mirrors/$os -o username=onrack,password=onrack,ro
done
echo "configure os repo end"
