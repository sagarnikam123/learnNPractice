#!/bin/bash
# 5_Checking to See if a File Exists
# -e -> for existance of a file (file test operators)
# give argument like -> /etc/fstab

# Short script to determine if a file exists
# Accepts a single argument

# Checks for presence of an argument
if [ "$#" -eq 0 ] ; then
  echo -e "\n Error! No filename specified."
  echo -e "\nUsage: $(basname $0) <filename>\n"
  exit 1
fi

filename=$1
if [ -e "$filename" ]; then
  echo -e "\n$filename exists"
else
  echo -e "\n$filename doesn't exist in the search PATH.\n"
fi
