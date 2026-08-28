#!/bin/bash

while true; do
    read -p "Enter a whole number: " input
    if [[ "$input" =~ ^-?[0-9]+$ ]]; then
        echo "Valid integer entered: $input"
        break
    else
        echo "Invalid input. Please enter a valid whole number."
    fi
done





