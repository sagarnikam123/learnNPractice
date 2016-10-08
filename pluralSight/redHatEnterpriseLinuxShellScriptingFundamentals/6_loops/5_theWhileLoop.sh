#!/bin/bash
# 5_The 'while' Loop

countdown=10

echo "Helm, prepare for warp speed. On my mark..."
sleep 2

while [ $countdown -gt 0 ] ; do
  echo $countdown
  let countdown=$countdown-1
  sleep 1
done

echo "Engage! >>>>>>>>>>>>>>>>>>>>"
