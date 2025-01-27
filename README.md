# Shell Script Bug: Finding the Largest Number

This repository contains a shell script that aims to find the largest number within a text file named `numbers.txt`. However, the script has a subtle bug that causes it to fail under certain conditions.

## Bug Description

The script encounters issues when the input file `numbers.txt` contains:

1. **Non-numeric data:** If the file includes lines that are not valid integers, the script will produce unexpected results or errors.
2. **Empty file:** If the input file is empty, the script will incorrectly report 0 as the largest number.

## Bug and Solution Files

- `bug.sh`: The original shell script containing the bug.
- `bugSolution.sh`: A corrected version of the script that addresses the identified issues.

## How to Reproduce the Bug

1. Create a file named `numbers.txt` with some numbers.
2. Run the `bug.sh` script. 
3. Modify the `numbers.txt` file to include non-numeric data or empty file and observe the erroneous output.

## Solution

The solution involves adding robust error handling and input validation to the script.