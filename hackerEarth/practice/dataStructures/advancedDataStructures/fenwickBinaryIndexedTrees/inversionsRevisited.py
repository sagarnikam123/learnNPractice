# Inversions Revisited

#######################################################################################################################
#
#   Most of us know how to count the number of inversions in an array. An inversion in an array is a pair of
#   indices(i,j) such that a[i]>a[j] and i < j.
#   In this problem you are given 2 arrays A and B and you have to return number of such pairs such
#   that a[i]>b[j] and i < j.
#
#   Input Format:
#   First line contains n denoting the total number of elements.The next line contains n space separated integers
#   of array A.This line is again followed by n space separated integers of array B.
#
#   Output Format:
#   Print the total number of pairs satisfying the above condition.
#
#   Constraints:
#
#   1 <= n <= 200000
#   1 <= A[i] <= 10^6
#   1 <= B[i] <= 10^6
#
#   SAMPLE INPUT
#   3
#   5 6 7
#   1 2 3
#
#   SAMPLE OUTPUT
#   3
#
#   Explanation
#   3 pairs are (5,2) , (5,3) and (6,3).
#
#######################################################################################################################
