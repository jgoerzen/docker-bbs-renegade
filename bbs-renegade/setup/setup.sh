#!/bin/bash

set -e
set -x

cd /dos/drive_c
unzip /tmp/setup/unofficial.rgbbsfullv120a.zip

sed -i -e 's/port = 3023/port = 23/' \
    -e 's/base_port = 3024/base_port = 7001/' \
    -e 's/display = :0.0/display = :1/' \
    -e 's,dosboxt = dosbox.conf.template,dosboxt = /dos/dosbox-telnetbbs-template.conf,'  \
    /dos/TelnetBBS-master/telnetbbs.conf

