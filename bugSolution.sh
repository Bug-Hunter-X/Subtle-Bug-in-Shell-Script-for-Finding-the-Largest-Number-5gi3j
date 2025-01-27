#!/bin/bash

# Improved script to find the largest number, handling errors and empty files gracefully.

input_file="numbers.txt"

#check if file exist
if [ ! -f "$input_file" ]; then
  echo "Error: Input file '$input_file' not found." >&2
  exit 1
fi

largest_number=""

while IFS= read -r number; do
  #check if number is numeric
  if [[ ! "$number" =~ ^-?[0-9]+$ ]]; then
    echo "Warning: Non-numeric value '$number' encountered. Skipping." >&2
    continue
  fi
  
  if [[ -z "$largest_number" ]] || [[ $number -gt $largest_number ]]; then
    largest_number=$number
  fi

done < "$input_file"

if [[ -z "$largest_number" ]]; then
  echo "Largest number:  The file is empty." 
else
  echo "Largest number: $largest_number"
fi