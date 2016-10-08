#!/bin/bash
# 3_Command Options for Read
# -n -> no of characters to accepts
# - -> operate read in silent mode & don't print a character taken from user


# Multiplication study buddy script for Pluralsight Scripting course

echo
echo "****Let me help you with your multiplications****"
echo

read -p "Enter first number: " value1

echo

read -p "Enter second number: " value2
echo
read -n1 -s -p "Press any key when you're ready to see the answer...."

let answer=$value1*$value2
echo
echo "$answer"
echo
