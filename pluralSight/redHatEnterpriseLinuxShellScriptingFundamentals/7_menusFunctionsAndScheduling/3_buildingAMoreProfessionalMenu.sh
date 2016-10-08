#!/bin/bash
# 3_Building a More Professional Menu

options="Sunderland Newcastle"

echo -e "\nChoose which of following English football teams you prefer:\n"
PS3="Enter choice: "

select choice in $options; do
  #echo "REPLY variable is $REPLY"
  #echo "choice variable is $choice"
  case $choice in
    "Sunderland")
      echo -e "\nNice one! You've obviously got good judgement skills.\n"
      break
    ;;
    "Newcastle")
      echo -e "\nOh dear! Logging you off and deleting your account!\n"
      break
    ;;
    *)
      echo -e "\nPlease choose a number from the list above."
    ;;
  esac
done
