#!/bin/bash

set -e
set -x

cd /tmp/setup
wget https://ftp.sunet.se/mirror/archive/ftp.sunet.se/pub/simtelnet/msdos/fossil/adf_150.zip
wget https://github.com/Geryon/TelnetBBS/archive/master.zip
wget http://www.starbase21.net/tm421.zip
wget https://archive.org/download/TelixCommunications_1020/telix351.zip

sha256sum -c < sums

mkdir doors
cd doors
wget http://archives.scovetta.com/pub/fehq/BBSDoorGames/2002v309.zip
wget http://www.slbbs.com/files/doorgame/lord407.zip
wget http://www.slbbs.com/files/doorgame/lord407-patch.zip
sha256sum -c < ../doorsums

