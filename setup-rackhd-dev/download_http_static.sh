#!/bin/bash

BASEFOLDER=~/src/static/http/common
mkdir -p $BASEFOLDER

BASEURL="https://bintray.com/artifact/download/rackhd/binary/builds"


FILE=discovery.overlay.cpio.gz
wget $BASEURL/$FILE -O $BASEFOLDER/$FILE


VERSION="3.13.0-32-generic"

FILE=base.trusty.$VERSION.squashfs.img
wget $BASEURL/$FILE -O $BASEFOLDER/$FILE

FILE=initrd.img-$VERSION
wget $BASEURL/$FILE -O $BASEFOLDER/$FILE

FILE=vmlinuz-$VERSION
wget $BASEURL/$FILE -O $BASEFOLDER/$FILE


VERSION="3.16.0-25-generic"

FILE=base.trusty.$VERSION.squashfs.img
wget $BASEURL/$FILE -O $BASEFOLDER/$FILE

FILE=initrd.img-$VERSION
wget $BASEURL/$FILE -O $BASEFOLDER/$FILE

FILE=vmlinuz-$VERSION
wget $BASEURL/$FILE -O $BASEFOLDER/$FILE
