#!/bin/bash
# 2_Intro to the Read Command
# - p is for displaying a prompt


# Multiplication study buddy script for Pluralsight Scripting course

echo
echo "****Let me help you with your multiplications****"
echo

read -p "Enter first number: " value1

echo

read -p "Enter second number: " value2
echo
read -p "Press any key when you're ready to see the answer...."

let answer=$value1*$value2
echo
echo "$answer"
echo
