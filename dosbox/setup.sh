#!/bin/bash

set -e
set -x

mkdir -p /dos/drive_{c,d,y}
cp -r /usr/lib/dosemu/drive_z/bin/* /dos/drive_y

DOSBOXCONF="`dosbox -printconf`"
mv "$DOSBOXCONF" /dos/dosbox.conf
echo "mount c /dos/drive_c" >> /dos/dosbox.conf
echo "mount d /dos/drive_d" >> /dos/dosbox.conf
echo "mount y /dos/drive_y" >> /dos/dosbox.conf
echo 'path %PATH%;Y:\' >> /dos/dosbox.conf

# Fix an issue with the VNC console
sed -i 's/usescancodes=true/usescancodes=false/' /dos/dosbox.conf
