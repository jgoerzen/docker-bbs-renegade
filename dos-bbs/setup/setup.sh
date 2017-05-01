#!/bin/bash

set -e
set -x

cd /dos
unzip /tmp/setup/master.zip

cd /dos/drive_y
mkdir adf
cd adf
unzip /tmp/setup/adf_150.zip

cd /dos/drive_d
mkdir comm
cd comm
unzip /tmp/setup/tm421.zip
mv tm421 tm

cd /dos/drive_d
mkdir doors
cd doors
mkdir tw2002
cd tw2002
unzip /tmp/setup/doors/2002v309.zip
cd ..
mkdir lord
cd lord
unzip -L /tmp/setup/doors/lord407.zip
unzip -L lord.zip
unzip -o -L /tmp/setup/doors/lord407-patch.zip

echo "y:" >> /dos/dosbox.conf
echo "cd \\adf" >> /dos/dosbox.conf
echo "adfcom1" >> /dos/dosbox.conf

# We don't need to waste CPU generating every frame.
sed -i 's/frameskip=0/frameskip=100/' /dos/dosbox.conf

# Disable sound.
sed -i 's/nosound=false/nosound=true/' /dos/dosbox.conf

# Generate the telnetbbs base.
sed 's/serial1=dummy/serial1=modem listenport:__LISTEN_PORT__/' \
  < /dos/dosbox.conf > /dos/dosbox-telnetbbs-template.conf

# Set up the TelnetBBS config.

sed -i -e 's/port = 3023/port = 23/' \
    -e 's/base_port = 3024/base_port = 7001/' \
    -e 's/display = :0.0/display = :1/' \
    -e 's,dosboxt = dosbox.conf.template,dosboxt = /dos/dosbox-telnetbbs-template.conf,'  \
    /dos/TelnetBBS-master/telnetbbs.conf

