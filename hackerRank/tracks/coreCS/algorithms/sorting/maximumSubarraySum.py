# Maximum Subarray Sum

#######################################################################################################################
#
#   We define the following:
#       A subarray of an n-element array, A, is a contiguous subset of A's elements in the inclusive range from some
#       index i to some index j where 0 <= i <= j < n.
#       The sum of an array is the sum of its elements.
#   Given an n-element array of integers, A, and an integer m, determine the maximum value of the sum of any of its
#   subarrays modulo m. This means that you must find the sum of each subarray modulo , then print the maximum result
#   of this modulo operation for any of the n.(n+1)/2 possible subarrays.
#
#   Input Format
#   The first line contains an integer q, denoting the number of queries to perform.
#   Each query is described over two lines:
#       The first line contains two space-separated integers describing the respective n (the array length) and
#       m (the right operand for the modulo operations) values for the query.
#       The second line contains n space-separated integers describing the respective elements of array
#       A = a0, a1,...., an-1 for that query.
#
#   Constraints
#   2 <= n <= 10^5
#   1 <= m <= 10^14
#   1 <= ai <= 10^18
#   2 <= the sum of n over all test cases <= 5 x 10^5
#
#   Output Format
#   For each query, print the maximum value of subarray sum % m on a new line.
#
#   Sample Input
#   1
#   5 7
#   3 3 9 9 5
#
#   Sample Output
#   6
#
#   Explanation
#   The subarrays of array A = [3,3,9,9,5] and their respective sums modulo m=7 are ranked in order of length
#   and sum in the following list:
#   1.
#   [9] => 9 % 7 = 2 and [9] -> 9 % 7 = 2
#   [3] => 3 % 7 = 3 and [3] -> 3 % 7 = 3
#   [5] => 5 % 7 = 5
#
#   2.
#   [9,5] => 14 % 7 = 0
#   [9,9] => 18 % 7 = 4
#   [3,9] => 12 % 7 = 5
#   [3,3] => 6 % 7 = 6
#
#   3.
#   [3,9,9] => 21 % 7 = 0
#   [3,3,9] => 15 % 7 = 1
#   [9,9,5] => 23 % 7 = 2
#
#   4.
#   [3,3,9,9] = 24 % 7 = 3
#   [3,9,9,5] = 26 % 7 = 5
#
#   5.
#   [3,3,9,9,5] = 29 % 7 = 1
#
#   As you can see, the maximum value for subarray sum % 7 for any subarray is 6, so we print 6 on a new line.
#
#######################################################################################################################
