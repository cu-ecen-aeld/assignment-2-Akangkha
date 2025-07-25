#!/bin/bash

writefile=$1
writestr=$2

# Extract directory from the provided file path
dirpath=$(dirname "$writefile")
mkdir -p "$dirpath"
if [ $? -ne 0 ]; then
  echo "Error: Failed to create directory '$dirpath'"
  exit 1
fi

echo "$writestr" > "$writefile"
if [ $? -ne 0 ]; then
  echo "Error: Failed to write to file '$writefile'"
  exit 1
fi

exit 0
