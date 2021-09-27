#!/bin/bash

# $1 - folder to use
# $2 - number of files
# $3 - file size

mkdir $1

for ((i=0; i<$2; i++))
do
    base64 /dev/urandom | head -c $3 > "$1/$i.txt"
done