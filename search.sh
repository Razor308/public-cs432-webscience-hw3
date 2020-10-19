#!/bin/bash

input="processedFileNames.txt"

while IFS= read -r line
do
	count=$(grep -c 'Trump' "$line")
	if [ $count -eq 0 ]; then
		continue
	else
		grep -c 'Trump' "$line"
		grep -l 'Trump' "$line"
	fi
done <$input
