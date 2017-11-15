# Extra Long Factorials

#######################################################################################################################
#
#   You are given an integer N. Print the factorial of this number.
#       N! = N x (N-1) x (N-2) x ... x 3 x 2 x 1
#
#   Input
#   Input consists of a single integer N, where 1 <= N <= 100.
#
#   Output
#   Print the factorial of N.
#
#   Example
#   For an input of 25, you would print 15511210043330985984000000.
#   Note: Factorials of N > 20 can't be stored even in a 64-bit long long variable. Big integers must be used for
#   such calculations. Languages like Java, Python, Ruby etc. can handle big integers,
#   but we need to write additional code in C/C++ to handle huge values.
#   We recommend solving this challenge using BigIntegers.
#
#######################################################################################################################

#!/bin/python3

import sys

n = int(input().strip())
