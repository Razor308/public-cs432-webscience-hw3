#!/bin/bash

input="fileNames.txt"

while IFS= read -r line
do
	python3.8 -m justext -s English -o "processed$line" "$line"	
	echo "processed$line" >> "processedFileNames.txt"
done < $input	
ls -l
