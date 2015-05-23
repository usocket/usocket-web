#!/bin/sh
set -x

rm -rf usocket-$1/.git
tar cvzf usocket-$1.tar.gz usocket-$1
rm usocket-latest.tar.gz
ln -s usocket-$1.tar.gz usocket-latest.tar.gz
gpg -b -a usocket-$1.tar.gz
rm usocket-latest.tar.gz.asc
ln -s usocket-$1.tar.gz.asc usocket-latest.tar.gz.asc
