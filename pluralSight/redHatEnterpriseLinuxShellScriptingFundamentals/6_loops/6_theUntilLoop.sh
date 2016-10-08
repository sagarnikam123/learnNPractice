#!/bin/bash
# 6_The 'until' Loop

countdown=10

echo "Helm, prepare for warp speed. On my mark..."
sleep 2

until [ $countdown -le 0 ] ; do
  echo $countdown
  let countdown=$countdown-1
  sleep 1
done

echo "Engage! >>>>>>>>>>>>>>>>>>>>"
