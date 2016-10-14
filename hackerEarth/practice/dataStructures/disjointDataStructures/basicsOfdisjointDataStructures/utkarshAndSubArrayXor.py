# Utkarsh and Sub Array Xor

#######################################################################################################################
#
#   Utkarsh loves binary sequences. Once he was playing with his favorite binary sequence of length N. But somehow
#   he misplaced it. He remembers the bitwise XOR of exactly K subarrays. Utkarsh fears that you will steal his
#   sequence so he will not reveal the actual XOR value of any sub array.
#   He plans to recover the sequence using this information only. You being his best friend will convince him there are
#   just too many sequences satisfying the Sub Array Xor and its better to forget his love for that sequence.
#
#   Input format:
#   The first line contains N and K. K lines follow.
#   Each line contains two integers u v denoting S[u] XOR .. XOR S[v] is known.
#
#   Output format:
#   Print K integers, ith integer being the maximum number of binary sequences of length N
#   satisfying first i XOR constraints.
#   As the answer can be large, output each result mod 10^9+7
#
#   Note: A binary sequence is a sequence consisting of 0's and 1's only.
#   S is one-indexed.
#
#   Constraints:
#   1 ≤ N ≤ 10^15
#   1 ≤ K ≤ min(10^6, N(N+1)/2)
#   1 ≤ u ≤ v ≤ N*
#
#   SAMPLE INPUT
#   5 3
#   1 1
#   2 3
#   5 5
#
#   SAMPLE OUTPUT
#   16
#   8
#   4
#
#######################################################################################################################
