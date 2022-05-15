#!/bin/sh

apt install libunwind8-dev
git clone https://github.com/google/honggfuzz.git
cd honggfuzz
make
make install
honggfuzz -n1 -z -i dns_message_parse_seed_corpus -- dns_message_parse_fuzzer ___FILE___