#!/bin/bash
# 7_Break and Continue

echo "Self-destruct sequence initiated. Escape pods launched.."
sleep 2

# break
for i in 10 9 8 7 6 5 4 3 2 1 "detonating the core" ; do
  if [ $(date +%a) = "Fri" ] ; then
    echo "It's Friday! This is way too much work for right before a weekend. Exiting..."
    break
  fi
  echo $i
  sleep 1
done

# Continue
echo "Using continue..."

for i in 10 9 8 7 6 5 4 3 2 1 "detonating the core" ; do
  if [ "$1" = "express" ] ; then
    continue
  fi
  echo $i
  sleep 1
done
