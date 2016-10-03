# Non-Divisible Subset

#######################################################################################################################
#
#   Given a set S, of n distinct integers, print the size of a maximal subset,S'of S where the sum of any 2 numbers
#   in S' are not evenly divisible by k.
#
#   Input Format
#   The first line contains 2 space-separated integers,n and k, respectively.
#   The second line contains n space-separated integers (we'll refer to the ith value as ai)
#   describing the unique values of the set.
#
#   Constraints
#   1 <= n <= 10^5
#   1 <= k <= 100
#   1 <= ai <= 10^9
#   All of the given numbers are distinct.
#
#   Output Format
#   Print the size of the largest possible subset (S').
#
#   Sample Input
#   4 3
#   1 7 2 4
#
#   Sample Output
#   3
#
#   Explanation
#   The largest possible subset of integers is S' = {1,7,4} because no two integers will have a sum
#   that is evenly divisible by k=3:
#       1+7 = 8, and 8 is not evenly divisible by 3.
#       1+4=5, and 5 is not evenly divisible by 3.
#       7+4=11, and 11 is not evenly divisible by 3.
#
#   The number 2 cannot be included in our subset because it will produce an integer that is evenly divisible
#   by k=3 when summed with any of the other integers in our set:
#       1+2 = 3, and 3/3=1 (remainder 0) .
#       4+2=6, and 6/3=2 (remainder 0) .
#       7+2=9, and 9/3=3(remainder 0) .
#
#   Thus, we print the length of S' on a new line, which is 3.
#
#######################################################################################################################
