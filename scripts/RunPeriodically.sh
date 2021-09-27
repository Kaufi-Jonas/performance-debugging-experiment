#!/bin/bash

# $1 - command to run
# $2 - min seconds to sleep
# $3 - number by which to divide random

while true
do
    sleepFor=$((($RANDOM / $3) + $2))
    sleep ${sleepFor}s
    ./$1
done