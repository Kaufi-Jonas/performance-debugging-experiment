#!/bin/bash

# $1 - prepared folder to use
# $2 - number by which random is divided

file1="$1/$(($RANDOM / $2)).txt"
file2="$1/$(($RANDOM / $2)).txt"
workingfile="$1/working.txt"
cp $file1 $workingfile &&
cat $file2 >> $workingfile &&
rm $workingfile