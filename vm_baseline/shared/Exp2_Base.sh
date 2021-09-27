#!/bin/bash
sysbench --time=0 --report-interval=1 --rate=0 --percentile=99 fileio --file-test-mode=rndrw --file-total-size=10G prepare
sysbench --time=0 --report-interval=1 --rate=0 --percentile=99 fileio --file-test-mode=rndrw --file-total-size=10G run