#!/bin/sh
set -x

# tarball is from GitHub releases

rm usocket-latest.tar.gz
ln -s usocket-$1.tar.gz usocket-latest.tar.gz
gpg -b -a usocket-$1.tar.gz
rm usocket-latest.tar.gz.asc
ln -s usocket-$1.tar.gz.asc usocket-latest.tar.gz.asc
