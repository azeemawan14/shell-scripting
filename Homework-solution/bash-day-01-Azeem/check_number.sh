#!/bin/bash

#while true; do

read -r -p "provide value: " value

if [[ "$value" =~ ^-?[0-9]+$ ]]; then

	echo "Valid input provided: $value"
#	break
else 
	echo "Invalid input. Please enter a valid whole number."
	exit 1
fi

#done

