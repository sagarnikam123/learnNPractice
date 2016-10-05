# Modified LIS

#######################################################################################################################
#
#   You are given a sequence of N integers as A1, A2, ... , AN. Let B be a sub-sequences of A, of maximum possible
#   length (say k), such that each of them satisfies following conditions:
#       |Bi| > |Bi-1|
#       Bi * Bi-1 < 0
#   for all i = 2, 3, ... k
#   Find number of distinct sub-sequences of length k that satisfy above conditions. Two sub-sequences are distinct
#   if they are made up using different set of indices of sequence A.
#
#   CONSTRAINTS
#   1 ≤ N ≤ 105
#   -105 ≤ Ai ≤ 105 for all i = 1, 2, 3, ... N
#   Ai != 0 for all i = 1, 2, 3, ... N
#
#   INPUT
#   First line contains one integer N, denoting the size of input array. Next line contains N space separated
#   integers, denoting the array A.
#
#   OUTPUT
#   Print two space separated integers, first one k, denoting the maximum possible size of such a sub-sequence
#   and second integer d, the number of all such sub-sequences. Since d can be large, print it modulo 109+7.
#
#   SAMPLE INPUT
#   7
#   1 -2 3 -4 5 5 6
#
#   SAMPLE OUTPUT
#   5 3
#
#   Explanation
#   The indices to be chosen for maximum length of sub-sequence that follows given criteria are:
#       1,2,3,4,5
#       1,2,3,4,6
#       1,2,3,4,7
#
#######################################################################################################################
