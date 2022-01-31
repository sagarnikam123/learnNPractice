#!/bin/bash

function get_latest_version(){
    echo "Resolving Host" 1>&2
    echo "Starting Connection" 1>&2
    echo "Downloading JSON" 1>&2
    echo "Extracting version" 1>&2
    echo "3.2.28"
}

#echo "the current version of foo is $(get_latest_version)"
#echo "the current version of foo is $(get_latest_version 2>/dev/null)"
echo "the current version of foo is $(get_latest_version 2>&1 1>/dev/null)"
