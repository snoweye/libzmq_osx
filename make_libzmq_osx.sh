#!/bin/sh

cd libzmq
./autogen.sh
./configure
make
make check
sudo make install
