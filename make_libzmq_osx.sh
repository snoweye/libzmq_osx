#!/bin/sh

cd libzmq
./autogen.sh
./configure \
  --with-pic=yes \
  --enable-static=yes \
  --enable-shared=no \
  --without-docs \
  --without-documentation \
  --disable-pedantic \
  --disable-eventfd \
  --disable-perf \
  --disable-curve-keygen \
  --disable-curve
make -j 4
# make check
sudo make install
