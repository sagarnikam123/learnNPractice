#!/bin/bash

function get_latest_version(){
    echo "3.2.28"
}

function get_oldest_version(){
    echo "0.0.1"
}

NEWEST=$(get_latest_version)
OLDEST=$(get_oldest_version)

#echo "the current version of foo is $(get_latest_version)"
echo "the current version of foo is $NEWEST"
echo "the older version of foo is $OLDEST"
