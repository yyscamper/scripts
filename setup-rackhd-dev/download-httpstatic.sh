#!/bin/bash

mkdir -p ~/tmp/on-http/static/http/common
cd ~/tmp/on-http/static/http/common

for file in $(echo "\
base.trusty.3.13.0-32-generic.squashfs.img \
base.trusty.3.16.0-25-generic.squashfs.img \
discovery.overlay.cpio.gz \
initrd.img-3.13.0-32-generic \
initrd.img-3.16.0-25-generic \
vmlinuz-3.13.0-32-generic \
vmlinuz-3.16.0-25-generic");do
wget "https://dl.bintray.com/rackhd/binary/builds/$file"
done
