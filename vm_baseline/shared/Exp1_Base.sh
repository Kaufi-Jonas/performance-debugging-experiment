#!/bin/bash

# measured workload
sysbench --time=0 --threads=2 --report-interval=1 --rate=4500 --percentile=99 cpu run