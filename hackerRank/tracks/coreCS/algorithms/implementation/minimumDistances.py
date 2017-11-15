# Minimum Distances

#######################################################################################################################
#
#   Consider an array of n integers A =[a0, a1, ....an-1]. The distance between two indices i and j,
#   is denoted by dij = |i-j|. Given A, find the minimum dij such that ai = aj and i is not equal to j.
#   In other words, find the minimum distance between any pair of equal elements in the array.
#   If no such value exists, print -1. Note: |a| denotes the absolute value of a.
#
#   Input Format
#   The first line contains an integer, n, denoting the size of array A.
#   The second line contains n space-separated integers describing the respective elements in array A.
#
#   Constraints
#   1 <= n <= 10^3
#   1 <= ai <= 10^5
#
#   Output Format
#   Print a single integer denoting the minimum dij in A; if no such value exists, print -1.
#
#   Sample Input
#   6
#   7 1 3 4 1 7
#
#   Sample Output
#   3
#
#   Explanation
#   Here, we have two options:
#       a1 and a4 are both 1, so d1,4 = |1-4| = 3.
#       a0 and a5 are both 7, so d0,5 = |0-5|= 5.
#   The answer is min(3,5) = 3.
#
#######################################################################################################################

#!/bin/python3

import sys

n = int(input().strip())
A = [int(A_temp) for A_temp in input().strip().split(' ')]
