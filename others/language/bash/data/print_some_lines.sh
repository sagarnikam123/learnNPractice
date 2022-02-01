#!/bin/bash

echo "This line is printed to stdout"
echo "This line is printed to stderr" 1>&2

echo "This line is also printed to stdout"
echo "This line is also printed to stderr" 1>&2
