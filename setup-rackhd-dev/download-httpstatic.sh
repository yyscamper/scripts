#!/bin/bash

CURDIR=`pwd`
DIR=~/src/static/http/common/
mkdir -p $DIR
rm $DIR
cd $DIR

for file in $(echo "\
base.trusty.3.16.0-25-generic.squashfs.img \
base.trusty.3.16.0-25-generic.full.squashfs.img \
discovery.overlay.cpio.gz \
initrd.img-3.16.0-25-generic \
vmlinuz-3.16.0-25-generic");do
wget "https://dl.bintray.com/rackhd/binary/builds/$file"
done

cd $CURDIR
