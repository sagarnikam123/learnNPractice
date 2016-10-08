#!/bin/bash
# 7_The Case Statement

# executable - /bin/bash
# plain text file - /etc/fstab
# script - 7_theCaseStatement.sh

# Checks for presence of an argument
if [ "$#" -eq 0 ] ; then
  echo -e "\n Error! No filename specified."
  echo -e "\nUsage: $(basename $0) <filename>\n"
  exit 1
fi

check=$(file $1 | cut -d " " -f2)
case $check in
  "ASCII")
    echo -e "\nFile $filename is a plain text file"
  ;;
  "Bourne-Again")
    echo -e "\nFile $filename is a script file"
  ;;
  "ELF")
    echo -e "\nFile $filename is an executable"
  ;;
  *)
    echo -e "\nGuess I'm having a bad day, I don't know that type"
  ;;
esac
