# Insertion Sort Advanced Analysis

#######################################################################################################################
#
#   Insertion Sort is a simple sorting technique which was covered in previous challenges. Sometimes, arrays may be
#   too large for us to wait around for insertion sort to finish. Is there some other way we can calculate the number
#   of times Insertion Sort shifts each elements when sorting an array?
#   If ki is the number of elements over which the ith element of the array has to shift, then the total number of
#   shifts will be k1 + k2 +...+kN.
#
#   Input Format
#   The first line contains a single integer T, denoting the number of queries to perform. The 2T subsequent lines
#   describe each query over two lines:
#       The first line contains an integer N, denoting the number of elements to be sorted.
#       The second line contains N space-separated integers describing the respective values of a[1], a[2],....a[N].
#
#   Constraints
#   1 <= T <= 15
#   1 <= N <= 1000000
#   1 <= a[i] <= 10000000
#
#   Output Format
#   Print T lines containing the required answer for each query.
#
#   Sample Input
#   2
#   5
#   1 1 1 2 2
#   5
#   2 1 3 1 2
#
#   Sample Output
#   0
#   4
#
#   Explanation
#   The first query is already sorted, therefore there's no need to shift any element. In the second case,
#   it will proceed in the following way.
#
#   Array: 2 1 3 1 2 -> 1 2 3 1 2 -> 1 1 2 3 2 -> 1 1 2 2 3
#   Moves:   -        1       -    2         -  1            = 4
#
#######################################################################################################################
