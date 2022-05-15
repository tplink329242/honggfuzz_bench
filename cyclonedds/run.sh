#!/bin/sh

apt install libbfd-dev
apt install libunwind8-dev
git clone https://github.com/google/honggfuzz.git
cd honggfuzz
make
make install
cd..
rm -rf honggfuzz

chmod 777 civetweb_fuzz1
honggfuzz -i fuzz_config_init_seed_corpus -- fuzz_config_init ___FILE___