#!/bin/bash

BASEFOLDER=~/src/static/tftp
mkdir -p $BASEFOLDER

FILE=monorail-efi32-snponly.efi
wget https://bintray.com/artifact/download/rackhd/binary/ipxe/$FILE -O $BASEFOLDER/$FILE

FILE=monorail-efi64-snponly.efi
wget https://bintray.com/artifact/download/rackhd/binary/ipxe/$FILE -O $BASEFOLDER/$FILE

FILE=monorail-undionly.kpxe
wget https://bintray.com/artifact/download/rackhd/binary/ipxe/$FILE -O $BASEFOLDER/$FILE

FILE=monorail.ipxe
wget https://bintray.com/artifact/download/rackhd/binary/ipxe/$FILE -O $BASEFOLDER/$FILE

FILE=monorail.ipxe.com_debug
wget https://bintray.com/artifact/download/rackhd/binary/ipxe/$FILE -O $BASEFOLDER/$FILE

FILE=monorail.ipxe.debug
wget https://bintray.com/artifact/download/rackhd/binary/ipxe/$FILE -O $BASEFOLDER/$FILE

FILE=undionly.kpxe
wget https://bintray.com/artifact/download/rackhd/binary/ipxe/$FILE -O $BASEFOLDER/$FILE

FILE=undionly.kkpxe
wget https://bintray.com/artifact/download/rackhd/binary/syslinux/$FILE -O $BASEFOLDER/$FILE
