#!/bin/sh

cd /root/honggfuzz_bench/civetweb/

nohup sh run.sh > full.log 2>&1 &

python extract_log.py 1800 $0