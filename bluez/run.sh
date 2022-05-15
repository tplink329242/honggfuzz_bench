#!/bin/sh

apt install libunwind8-dev
git clone https://github.com/google/honggfuzz.git
cd honggfuzz
make
make install
honggfuzz -n1 -u -i IN/ -- fuzz_sdp ___FILE___