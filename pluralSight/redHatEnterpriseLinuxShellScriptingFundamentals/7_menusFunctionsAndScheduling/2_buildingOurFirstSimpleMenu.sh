#!/bin/bash
# 2_Building Our First Simple Menu

options="Sunderland Newcastle"

select choice in $options; do
  echo "REPLY variable is $REPLY"
  echo "choice variable is $choice"
done
