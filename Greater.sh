#!/bin/bash


if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <number> <filename>"
    exit 1
fi


number=$1
filename=$2

if ! [[ "$number" =~ ^-?[0-9]+$ ]]; then
    echo "Error: The first argument must be a valid number."
    exit 1
fi


if ! touch "$filename" 2>/dev/null; then
    echo "Error: Cannot write to the file '$filename'."
    exit 1
fi


if [ "$number" -gt 100 ]; then
    echo "CENTURY" > "$filename"
else
    echo "Getting There" > "$filename"
fi


#read -p "Please enter additional input: " additional_input
value=`cat $filename`  


echo "$value"