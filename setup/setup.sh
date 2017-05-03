#!/bin/bash

set -e
set -x

cd /dos/drive_g
unzip /tmp/setup/unofficial.rgbbsfullv120a.zip
cd rg/DATA

# set up all 9 nodes.
for ASDF in 2 3 4 5 6 7 8 9; do
  cp NODE1.DAT NODE$ASDF.DAT
done
cp /tmp/setup/MULTNODE.DAT .

cd /dos/drive_g/rg

# Patch the paths
find . -type f -exec sed -i 's,C:\\RG,G:\\RG,g' {} \;

cd /dos

echo "G:" >> addtoboot
echo "CD RG" >> addtoboot
echo "renegade.exe /N__NODE__" >> addtoboot

echo 2 > /dos/numnodes   # 2 nodes by default

