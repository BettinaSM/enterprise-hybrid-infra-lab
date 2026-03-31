#!/bin/bash

CURRENT=$1
PREVIOUS=$2

echo "Comparing runs:"
echo "Current: $CURRENT"
echo "Previous: $PREVIOUS"

for file in $CURRENT/*.log
do
    host=$(basename $file)

    if [ -f "$PREVIOUS/$host" ]; then
        echo "===== DIFF for $host ====="
        diff "$PREVIOUS/$host" "$file"
    else
        echo "No previous data for $host"
    fi
done
