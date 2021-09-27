#!/bin/bash
sysbench --time=0 --report-interval=1 --rate=0 --percentile=99 fileio --file-test-mode=rndrw --file-total-size=10G prepare
sysbench --time=0 --report-interval=1 --rate=0 --percentile=99 fileio --file-test-mode=rndrw --file-total-size=10G run

./StressDisk.sh 1 8000 /home/vagrant/test/ 5 6000 500000000