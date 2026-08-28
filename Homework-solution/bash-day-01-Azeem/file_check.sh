#!/bin/bash

#Provide the file name

#while true; do
read -r -p "Please provide the file name or path: " file


if [[ ! -e "$file" ]]; then
	echo "invalid file name or path."
	exit 1

elif [[ -f "$file" ]]; then
	echo "File "$file" found."
	exit 0
elif [[ -d "$file" ]]; then
	echo "Directory "$file" found."
	exit 0

#else 
#	echo "invalid file name or directory name."
#	exit 1

fi
#done
