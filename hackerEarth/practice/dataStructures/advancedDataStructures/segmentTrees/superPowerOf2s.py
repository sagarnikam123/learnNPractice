# Super Power Of 2s

#######################################################################################################################
#
#   Maggu loves to create problems involving queries. This time ,he has created one for you.
#   Given an array containing n elements and maggu asked you two types of queries.
#   type 0 : l r
#   type 1 : l r
#
#   Explanation:
#   type 0 : add 2^1 to l th element, 2^2 to the (l+1) th element , 2^3 ot the (l+2) th element
#       and so on upto r th element.
#   type 1: you are asked to print the sum of all the elements in range[l,r].
#
#   INPUT:
#   The first line contains the integer n denoting the size of array.This line is followed by n integers.
#   After this line integer m is present denoting the number of queries. M lines follow each line containing the
#   three integers the type and l and r.
#
#   OUTPUT:
#   For each query of type 1 print the result in a new line.
#
#   CONSTRAINTS:
#   1 <= n <= 210^5
#   1 <= A[i] <= 10^9
#   1 <= m <= 210^5
#   0 <= type <= 1
#   1 <= l <= r <= n
#
#   Note:
#   answer to a query can be very large therefore print answer mod 10^9+7
#   Large I/O files so use scanf/printf instead of cin/cout.
#
#   SAMPLE INPUT
#   5
#   0 0 0 0 0
#   5
#   0 1 2
#   1 1 5
#   0 3 5
#   1 1 5
#   1 2 3
#
#   SAMPLE OUTPUT
#   6
#   20
#   6
#
#######################################################################################################################
