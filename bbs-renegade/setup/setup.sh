#!/bin/bash

set -e
set -x

cd /dos/drive_c
unzip /tmp/setup/unofficial.rgbbsfullv120a.zip

cd /dos
DBCONF="/dos/dosbox-telnetbbs-template.conf"
echo "C:" >>$DBCONF
echo "cd rg" >>$DBCONF
echo "share" >>$DBCONF
echo "renegade.exe /N__NODE__ -Q" >>$DBCONF
echo "exit" >>$DBCONF

