#!/bin/sh

cd /root/honggfuzz_bench/igraph/

nohup sh run_read_ncol_fuzzer.sh > full.log 2>&1 &

python extract_log.py 1800 $0
