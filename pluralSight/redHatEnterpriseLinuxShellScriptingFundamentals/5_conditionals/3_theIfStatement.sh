#!/bin/bash
# 3_The if statement

if [[ $# -eq 0 ]] ; then
  echo -e "\n Wait.... you didn't enter any arguments\n"
else
  echo -e "\n You typed the following arguments: $@\n"
fi


if [ $# > 1 ]
then
  echo "You typed more than 1 arguments....Good !"
else
  echo "What you have typed....typperrr.... ?"
fi
