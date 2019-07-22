#!/bin/bash 
file="$1"
for filename in "$@"; do
    echo "************* $filename *************** "
    cat "$filename"
    echo " "
    gcc "$filename"
    echo "************* running  **************** "
    ./a.out
done