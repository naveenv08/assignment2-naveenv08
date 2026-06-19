#!/bin/sh

writefile=$1
writestr=$2

if [ $# -lt 2 ]
then
	echo "Need Two Parameters"
	echo "Usage: ./writer.sh PATH_TO_FILE STRING"
	exit 1
fi

dirpath=$(dirname "$writefile")

mkdir -p "$dirpath"

if [ $? -ne 0 ]
then
	echo "Error: Could not create Directory path"
	exit 1
fi

echo "$writestr" > "$writefile"

if [ $? -ne 0 ]
then
        echo "Error: Could not create file or write to file"
        exit 1
fi


