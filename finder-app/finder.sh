#!/bin/sh

# Check arguments
if [ "$#" -ne 2 ]; then
    exit 1
fi

filesdir="$1"
searchstr="$2"

# Validate directory
if [ ! -d "$filesdir" ]; then
    exit 1
fi

num_files=$(find "$filesdir" -type f | wc -l)
num_matches=$(grep -R "$searchstr" "$filesdir" | wc -l)

echo "The number of files are $num_files and the number of matching lines are $num_matches"

exit 0

