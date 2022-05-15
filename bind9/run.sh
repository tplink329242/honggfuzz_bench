#!/bin/sh
../honggfuzz -n1 -u -i dns_message_parse_seed_corpus -- dns_message_parse_fuzzer ___FILE___