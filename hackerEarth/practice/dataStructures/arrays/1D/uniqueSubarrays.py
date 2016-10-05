# Unique Subarrays

#######################################################################################################################
#
#   A contiguous subarray is defined as unique if all the integers contained within it occur exactly once. There is
#   a unique weight associated with each of the subarray. Unique weight for any subarray equals it's length if it's
#   unique, 0 otherwise. Your task is to calculate the sum of unique weights of all the contiguous subarrays
#   contained within a given array.
#
#   Input
#   First line of the input contains an integer T, denoting the number of testcases. 2∗T lines follow, where first
#   line of each testcase contains an integer N denoting the number of integers in the given array. Last line of
#   each testcase then contains N
#
#   single space separated integers
#
#   Output
#   Print the summation of unique weights of all the subarrays for each testcase in a separate line.
#
#   Constraints
#   1 <= T,N <= 105
#   0 <= Ai <= 109
#   Summation of N for all T does not exceed 105
#
#   SAMPLE INPUT
#   1
#   5
#   1 2 3 4 5
#
#   SAMPLE OUTPUT
#   35
#
#   Explanation
#   Sample Case 1: Since, all integers are distinct within any contiguous subarray, therefore the unique weight
#   will be the summation of lengths of all subarrays. Hence, this sums upto 5+4∗2+3∗3+2∗4+1∗5=35
#
#######################################################################################################################
