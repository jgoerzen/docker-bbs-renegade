#!/bin/bash

set -e
set -x

cd /dos
unzip /tmp/setup/master.zip

cd /dos/drive_d
mkdir adf
cd adf
unzip /tmp/setup/adf_150.zip

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

echo "d:" >> /dos/dosbox.conf
echo "cd \\adf" >> /dos/dosbox.conf
echo "adf.exe COM1 3F8 4 115200 8192 8192 8" >> /dos/dosbox.conf

