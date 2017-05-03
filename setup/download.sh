#!/bin/bash

set -e
set -x

cd /tmp/setup
wget http://renegadebbs.info/files/unofficial.rgbbsfullv120a.zip

sha256sum -c < sums

