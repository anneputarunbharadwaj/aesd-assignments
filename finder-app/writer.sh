#!/bin/bash

# Check number of arguments
if [ $# -ne 2 ]; then
    exit 1
fi

writefile=$1
writestr=$2

# Create directory path if needed
mkdir -p "$(dirname "$writefile")" || exit 1

# Write string to file
echo "$writestr" > "$writefile" || exit 1

exit 0
