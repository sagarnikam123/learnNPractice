# Utkarsh and Tiresome RMQ

#######################################################################################################################
#
#   Utkarsh loves finding maximum integers in a given sequence. But this love is not always accompanied with proper
#   knowledge. His teacher once gave him a homework problem and due to his poor knowledge he was not able to solve
#   it. Its 6 in the morning and he has just 2 hours left to solve the problem. Can you help him solve the problem.
#   He was given an array A consisting of N integers and integers B and M. He had to answer Q queries.
#   Each query is of the form
#   x y : Print the maximum integer among {Ax + B, Ax−y + 2B, Ax−2y + 3B,..., Ax−(M−1)y + MB }
#
#   INPUT
#   First line contains four integers N,Q,B,M.
#   Second line contains N integers of array A.
#   Next Q lines describe Q queries in the form x y.
#
#   OUTPUT
#
#   Print the answer to each query.
#
#   CONSTRAINTS
#   1 <= N,Q,M <= 10^5
#   −10^9 <= Ai ,B <= 10^9
#   1 <= x,y <= N
#
#   Note: Array A is 1-indexed. Do not consider elements in the list if corresponding index in array is non-positive,
#   i.e., do not consider Ax−(i−1)×y+iB
#   if (x−(i−1)×y) <= 0
#
#   SAMPLE INPUT
#   8 8 3 3
#   4 8 7 4 1 10 1 12
#   1 1
#   2 1
#   3 1
#   4 2
#   5 3
#   6 1
#   7 2
#   8 1
#
#   SAMPLE OUTPUT
#   7
#   11
#   14
#   14
#   14
#   13
#   16
#   19
#
#   Explanation
#   The list of integers for each query: maximum
#       {4+3} : 7
#       {8+3, 4+6}: 11
#       {7+3, 8+6, 4+9}:14
#       {4+3, 8+6}: 14
#       {1+3, 8+6}: 14
#       {10+3, 1+6, 4+9}: 13
#       {1+3, 1+6, 7+9} : 16
#       {12+3, 1+6, 10+9}: 19
#   (Note that in some lists less than three elements are considered because
#   their corresponding array index is non positive)
#
#######################################################################################################################
