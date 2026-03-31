#!/bin/bash

CURRENT=$1
PREVIOUS=$2

echo "===== RUN COMPARISON ====="

for file in $CURRENT/*.log
do
    host=$(basename $file)

    echo "Comparing $host"

    if [ -f "$PREVIOUS/$host" ]; then
        diff "$PREVIOUS/$host" "$file"
    else
        echo "No previous file for $host"
    fi

    echo "----------------------"
done
