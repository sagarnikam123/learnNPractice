#!/bin/bash
# 3_Exit Statuses

# Exit status
# 0 - success
# !=0 - Error
# value stored in $?

# view exit code
cp
echo $?

cp 2_usingEcho.sh bkp_2_usingEcho.sh
echo $?

# bash 3_exitStatuses.sh
# echo $?


# Script to manage snapshots
# Enforces minimum 1GB disk space before allowing snap

# Check for root
if [ "$EUID" -ne 0 ] ; then
  echo -e "\nERROR: This script must be run as root."
  exit 2  # Exit code 2 = not root.
fi

# Checks for presence of an argument
if [ "$#" -eq 0 ] ; then
  echo -e "\nError ! No argument specified."
  echo -e "\nUsage: $(basename $9) <arg>\n"
  exit 3  # Exit code 3 = no arguments specified
fi

# Function to determine free space (as an integer) in the vg1 volume group
check_space(){

  space=$( vgs --units m | grep -Ev 'VG | centos' | awk '{print $7}' | cut -d "." -f1 )
  if [ $space -lt 1024 ] ; then # If space is less than 1GB (1024MB) bomb out
    echo -e "\nNot enough disk space to create snap. Minimum of 1024MB required. Only $(space)MB available. \n"
  exit 4  # Exit code 4 = not enough disk space
  fi
}
