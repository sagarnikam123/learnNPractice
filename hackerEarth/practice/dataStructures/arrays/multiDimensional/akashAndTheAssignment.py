# Akash and the Assignment

#######################################################################################################################
#
#   Akash has lots of assignments to submit in his college. In one of the assignment he is given a string S of
#   length N consisting of lowercase letters (a - z) only. Akash has to answer Q queries and for every query, he
#   is given L, R and K. For each query he has to find the lexicographically Kth smallest character in substring
#   of S starting from L to R, inclusively. Help Akash in solving his assignment.
#
#   Input
#   First line contains 2 integers N and Q, length of string and number of queries.
#   Next line has a string S of length N. Next Q lines contains 3 integers L, R and K.
#
#   Output
#   For each query output the lexicographically Kth smallest character in substring of S starting from L to R
#   if possible, else print "Out of range" (without qoutes).
#
#   Constraints
#   1 <= N <= 5*10^4
#   1 <= Q <= 10^5
#   1 <= L <= R <= N
#   1 <= K <= N
#
#   Note:
#   S contains only lowercase latin letters (a to z).
#
#   SAMPLE INPUT
#   6 2
#   abcdef
#   2 6 3
#   4 6 1
#
#   SAMPLE OUTPUT
#   d
#   d
#
#   Explanation
#   In first query, substring will be bcdef. 3rd smallest character in the substring is d. In second query,
#   substring will be def. 1st smallest character in the substring is d.
#
#######################################################################################################################
