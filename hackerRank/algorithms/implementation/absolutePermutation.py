# Absolute Permutation

#######################################################################################################################
#
#   We define P to be a permutation of the first N natural numbers in the range [1,N]. Let Posi denote the position
#   of i in permutation P(please use 1-based indexing).
#   P is considered to be an absolute permutation if abs(Posi - i) = K holds true for every i E(Belongs to) [1, N].
#   Given N and K, print the lexicographically smallest absolute permutation, P;
#   if no absolute permutation exists, print -1.
#
#   Input Format
#   The first line of input contains a single integer T, denoting the number of test cases.
#   Each of the T subsequent lines contains 2 space-separated integers describing
#   the respective N and K values for a test case.
#
#   Constraints
#   1 <= T <= 10
#   1 <= N <= 10^5
#   0 <= k < N
#
#   Output Format
#   On a new line for each test case, print the lexicographically smallest absolute permutation; if no absolute
#   permutation exists, print -1.
#
#   Sample Input
#   3
#   2 1
#   3 0
#   3 2
#
#   Sample Output
#   2 1
#   1 2 3
#   -1
#
#   Explanation
#   Test Case 0:
#   [perm.png]
#
#   Test Case 1:
#   [perm(1).png]
#
#   Test Case 2:
#   No absolute permutation exists, so we print -1 on a new line.
#
#######################################################################################################################

#!/bin/python3

import sys

t = int(input().strip())
for a0 in range(t):
    n,k = input().strip().split(' ')
    n,k = [int(n),int(k)]
