#!/bin/sh

cd /root/honggfuzz_bench/e2fsprogs/

nohup sh run.sh > full.log 2>&1 &

python3 extract_log.py 1800 $0

