#!/bin/bash
# 4_Checking for Arguments

if [[ $# -eq 0 ]] ; then
  echo -e "\nWait.... you didn't enter any arguments\n"
  echo -e "Usage: $(basename $0) <arg1> <arg2> ... <argn>\n"
  exit 1
fi

echo "We'll only see this if an argument was specified"
