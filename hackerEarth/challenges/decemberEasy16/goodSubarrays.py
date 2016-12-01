# Good Subarrays

#######################################################################################################################
#
#   Rhezo likes the problems about subarrays . Today, he has an easy problem for you, but it isn't easy for him.
#   Can you help Rhezo solve it? The problem is as follows.
#   You are given an array A of N elements and a value P. Rhezo calls an array good
#   if sum of all elements of the array is less than P.
#   We can also define how good a sub array is. The goodness quotient of a good subarray is defined
#   as the maximum number in the good subarray.
#   Your task is simple, you need to find the most frequent goodness quotient taking into account all the sub arrays.
#   Most frequent value in a list of values, is the value occurring maximum number of times.
#   If there are many such values, print the one whose value is maximum.
#
#   Input:
#   First line of the input contains two single space separated integers N and P.
#   Next line contains N space separated integers denoting the array A.
#
#   Output:
#   Find the most frequent goodness quotient taking into account all the sub arrays. If there are 0
#   good sub arrays, output −1.
#
#   Constraints:
#   1 <= N <= 10^5
#   1 <= Ai <= 10^9
#   1 <= P <= 10^14
#
#   SAMPLE INPUT
#   5 7
#   2 2 8 1 3
#
#   SAMPLE OUTPUT
#   2
#
#   Explanation
#   Good sub arrays are: [2],[2,2],[2],[1],[1,3],[3].
#   Goodness quotient of the above sub arrays are: 2,2,2,1,3,3.
#   The most frequent goodness quotient is 2.
#
#######################################################################################################################
