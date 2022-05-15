#!/bin/sh

apt install libbfd-dev
apt install libunwind8-dev
git clone https://github.com/google/honggfuzz.git
cd honggfuzz
make
make install
cd..
rm -rf honggfuzz

mkdir IN
echo A >IN/123456789089876543210

honggfuzz -i IN/ -M -- civetweb_fuzz1 ___FILE___