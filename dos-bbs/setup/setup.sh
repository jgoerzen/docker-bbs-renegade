#!/bin/bash

set -e
set -x

cd /dos
unzip /tmp/setup/master.zip

cd /dos/drive_d
mkdir adf
cd adf
unzip /tmp/setup/adf_150.zip

echo "d:" >> /dos/dosbox.conf
echo "cd \\adf" >> /dos/dosbox.conf
echo "adf.exe COM1 3F8 4 115200 8192 8192 8" >> /dos/dosbox.conf

