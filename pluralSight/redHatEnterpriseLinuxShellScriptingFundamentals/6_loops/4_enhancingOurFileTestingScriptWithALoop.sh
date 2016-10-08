#!/bin/bash
# 4_Enhancing Our File Testing Script With a Loop

#pass argument
# /etc/fstab /bin/bash 4_enhancingOurFileTestingScriptWithALoop.sh

# Checks for presence of an argument
if [ "$#" -eq 0 ] ; then
  echo -e "\n Error! No filename specified."
  echo -e "\nUsage: $(basename $0) <filename>\n"
  exit 1
fi

for i ; do
  check=$(file $1 | cut -d " " -f2)
  filename="$1"

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

shift
done
