#!/bin/bash

# measured workload
sysbench --time=0 --threads=2 --report-interval=1 --rate=4500 --percentile=99 cpu run &

# interfering workload
./../scripts/StressCPU.sh 4 2000000 5 10

killall sysbench