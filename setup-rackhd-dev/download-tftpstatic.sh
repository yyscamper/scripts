#!/bin/bash

#!/bin/bash
CURDIR=`pwd`
DIR=/home/yuanf/src/static/tftp
mkdir -p $DIR
rm $DIR/*
cd $DIR

for file in $(echo "\
undionly.kpxe \
monorail.ipxe \
monorail-undionly.kpxe \
monorail-efi64-snponly.efi \
monorail-efi32-snponly.efi");do
wget "https://dl.bintray.com/rackhd/binary/ipxe/$file"
done

cd $CURDIR

