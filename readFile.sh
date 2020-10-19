#!/bin/bash

input="uniqueTwitterLinks.txt"

while IFS= read -r line
do
	fileName=$(echo -n "$line" | (md5sum))
	curl "$line" > "$fileName.html"
	echo "$line" >> "$fileName.html"
	echo "$fileName.html" >> "fileNames.txt"
done < "$input"
ls -l
