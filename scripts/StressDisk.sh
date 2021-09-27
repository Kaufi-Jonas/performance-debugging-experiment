#!/bin/bash

maxrandom=32767

# $1 - number of concurrent workers
# $2 - number $RANDOM is divided by for number of files
# $3 - folder to use
# $4 - min seconds to sleep
# $5 - number by which to divide random for sleep
# $6 - file size
numfiles=$(($maxrandom / $2 + 1))

for ((i=0; i < $1; i++))
do
    directory="$3/ShortDisk_$i"

    # remove directory if exists
    if [ -d $directory ]; then
        rm -r $directory
    fi

   ./ShortDiskPrepare.sh $directory $numfiles $6

    echo "Prepared files for worker $i."
done

for ((i=0; i < $1; i++))
do
    directory="$3/ShortDisk_$i"
    ./RunPeriodically.sh "ShortDisk.sh $directory $2" $4 $5 &
done

echo "Started all processes."

while : ; do
    read -n 1 k <&1
    if [[ $k = q ]] ; then
        break
    fi
done

killall RunPeriodically
echo "
All processes have been terminated."

# cleanup
for ((i=0; i < $1; i++))
do
    directory="$3/ShortDisk_$i"
    rm -r $directory
    echo "Removed files for worker $i."
done