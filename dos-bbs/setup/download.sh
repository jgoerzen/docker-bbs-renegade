#!/bin/bash

set -e
set -x

cd /tmp/setup
wget https://ftp.sunet.se/mirror/archive/ftp.sunet.se/pub/simtelnet/msdos/fossil/adf_150.zip
wget https://github.com/Geryon/TelnetBBS/archive/master.zip

sha256sum -c < sums
