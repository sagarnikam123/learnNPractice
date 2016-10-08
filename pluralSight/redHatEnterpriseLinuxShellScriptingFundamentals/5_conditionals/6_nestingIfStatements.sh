#!/bin/bash
# 6_Nesting if statements
# Short script to determine if a file exists and what type of file it is
# Accepts a single argument

# File test operators
# -e -> file exists
# -b -> block device file
# -c -> char device file
# -f -> regular file
# -d -> directories
# -r -> read access
# -w -> write access
# -x -> execute permission
# -s -> same as -x

# block file - /dev/sda
# directory - /dev
# character file - /dev/pts/0


# Checks for presence of an argument
if [ "$#" -eq 0 ] ; then
  echo -e "\n Error! No filename specified."
  echo -e "\nUsage: $(basename $0) <filename>\n"
  exit 1
fi

# Checks for file type
filename=$1
if [ -e "$filename" ]; then
  echo -e "\n$filename exists"
  if [ -f "$filename" ]; then
    echo -e "\nFile $filename is a regular file\n"
  elif [ -b "$filename" ] ; then
    echo -e "\nFile $filename is a block file\n"
  elif [ -c "$filename" ] ; then
    echo -e "\nFile $filename is a char file\n"
  elif [ -d "$filename" ] ; then
    echo -e "\nFile $filename is a directory\n"
  else
    echo "\nSorry, I don't know what type of file that is\n"
  fi

else
  echo -e "\n$filename doesn't exist in the search PATH.\n"
fi
