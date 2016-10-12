# Sherlock and Inversions

#######################################################################################################################
#
#   Watson gives to Sherlock an array of N integers denoted by A1, A2 ... AN.
#   Now he gives him Q queries of form Li, Ri. For each such query Sherlock has to report the number of inversions
#   in subarray denoted by [Li, Ri].
#   Inversions in a subarray denoted by [a, b] are number of pairs (i, j) such that a  <=  i < j  <=  b and Ai > Aj.
#
#   Input
#   First line contains N and Q. Next line contains N space separated integers denoting array A.
#   Each of the next Q lines contain two space separated integers denoting Li, Ri.
#
#   Output
#   For each query, print the required answer in one line.
#
#   Constraints
#   20% files: 1  <=  N, Q  <=  10^3
#   20% files: 1  <=  N  <=  10^3 and 1  <=  Q  <=  10^5
#   60% files: 1  <=  N, Q  <=  10^5
#   1  <=  Ai  <=  10^9
#   1  <=  Li  <=  Ri  <=  N
#
#   SAMPLE INPUT
#   5 3
#   1 4 2 3 1
#   1 2
#   3 5
#   1 5
#
#   SAMPLE OUTPUT
#   0
#   2
#   5
#
#   Explanation
#   query1: Number of inversions in B = [1, 4] is 0.
#   query2: Number of inversions in B = [2, 3, 1] are 2 since B[0]>B[2] and B[1]>B[2].
#   query3: Number of inversions in original array are 5.
#
#######################################################################################################################
