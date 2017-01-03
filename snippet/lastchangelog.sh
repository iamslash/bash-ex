#!/bin/bash

# read and echo lines from a file
# and break 2nd #

sharpcnt=0
export msg=""
while IFS='' read -r line || [[ -n "$line" ]]; do
    if [[ "$line" == *#* ]]; then
       let "sharpcnt += 1"
    fi
    if [[ $sharpcnt > 5 ]]; then
        break
    fi
    msg+="$line"$'\r\n'
done < "$1"

echo "$msg"
