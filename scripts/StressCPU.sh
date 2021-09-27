#!/bin/bash

# $1 number of concurrent workers
# $2 length of text to calculate shasum of
# $3 min seconds for random sleep
# $4 max seconds for random sleep

cd "$(dirname "$0")"

for ((i=0; i < $1; i++))
do
    python PeriodicShortCPU.py $2 $3 $4 > /dev/null &
done

echo "Started all processes."

while : ; do
    read -n 1 k <&1
    if [[ $k = q ]] ; then
        break
    fi
done

killall python
echo "
All processes have been terminated."