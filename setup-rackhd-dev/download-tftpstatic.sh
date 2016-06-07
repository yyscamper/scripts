#!/bin/bash

#!/bin/bash

mkdir -p ~/tmp/tftp
cd ~/tmp/tftp

for file in $(echo "\
undionly.kpxe \
monorail.ipxe \
monorail-undionly.kpxe \
monorail-efi64-snponly.efi \
monorail-efi32-snponly.efi");do
wget "https://dl.bintray.com/rackhd/binary/ipxe/$file"
done

