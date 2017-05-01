#!/bin/bash

set -e
set -x

cd /dos/drive_c
unzip /tmp/setup/unofficial.rgbbsfullv120a.zip
cd rg/DATA

# Configure the modem with ATNET1 instead of ATZ,
# plus set up all 9 nodes.
cp /tmp/setup/NODE1.DAT .
for ASDF in 2 3 4 5 6 7 8 9; do
  cp NODE1.DAT NODE$ASDF.DAT
done
cp /tmp/setup/MULTNODE.DAT .

cd /dos
DBCONF="/dos/dosbox-telnetbbs-template.conf"
echo "C:" >>$DBCONF
echo "cd rg" >>$DBCONF
echo "share" >>$DBCONF
echo "renegade.exe /N__NODE__ -Q" >>$DBCONF
echo "exit" >>$DBCONF

sed -i 's/nodes = 3/nodes = 9/' /dos/TelnetBBS-master/telnetbbs.conf

# Disable the DOSBOX console auto start
rm /etc/supervisor/conf.d/dosbox.conf

