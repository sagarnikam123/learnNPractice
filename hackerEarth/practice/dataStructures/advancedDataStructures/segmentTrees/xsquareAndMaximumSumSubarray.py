# Xsquare And Maximum Sum Subarray

#######################################################################################################################
#
#   Xsquare has decided to win next Programming Marathon and started his preparation for the same. Xsquare's coach
#   advised him to revise algorithmic concepts and to try twik of some standard problem. Xsquare's coach knows that
#   it is the only best strategy to perform well at any kind of marathon.
#   Xsquare started following his coach's instructions and getting better and better as the day passes. One fine day,
#   Xsquare has taken up the following standard problem.
#   Given a one dimensional array A of size N that may contain both positive and negative integers, find the sum
#   of contiguous subarray of numbers which has the largest sum.
#   Xsquare modified the above problem to make it bit more interesting .
#   Given a one dimensional array A of size N that may contain both positive and negative integers and an integer K,
#   find the sum of contiguous subarray of numbers which has the largest sum such that no element in the selected
#   array is greater than K. To make this problem a bit harder, Xsquare decided to add Q queries to this problem
#   each containing one integer i.e K.
#
#   Input
#   First line of input contains two integers N and Q denoting the size of array A and number of queries respectively.
#   Second line of each test case contains N space separated integers denoting array A. Next Q lines of each test
#   cases contains a single integer denoting K.
#
#   Output
#   For each query, print the required answer.
#
#   Note
#   If there is no element X in the array such that X ≤ K for some K, print "No Solution" without quotes.
#
#   Constraints
#       1 ≤ N,Q ≤ 5*10^5
#       -10^9 ≤ Ai,K ≤ 10^9
#       All test data is strictly according to constraints
#
#   Subtasks
#       Subtask1 : 1 ≤ N,Q ≤ 5*10^3 , 0 ≤ Ai ≤ 10^9 (20 pts)
#       Subtask2 : 1 ≤ N,Q ≤ 5*10^3 , -10^9 ≤ Ai ≤ 10^9 (20 pts)
#       Subtask3 : 1 ≤ N,Q ≤ 5*10^5 , -10^9 ≤ Ai ≤ 10^9 (60 pts)
#
#   SAMPLE INPUT
#   5 6
#   1 2 3 4 5
#   5
#   4
#   3
#   2
#   1
#   0
#
#   SAMPLE OUTPUT
#   15
#   10
#   6
#   3
#   1
#   No Solution
#
#   Explanation
#   Q1 : Chosen subarray is [1,2,3,4,5]. sum of elements = 15. Q2 : Chosen subarray is [1,2,3,4].
#   sum of elements = 10. Q3 : Chosen subarray is [1,2,3]. sum of elements = 6. Q4 : Chosen subarray is [1,2].
#   sum of elements = 3. Q5 : Chosen subarray is [1]. sum of elements = 1. Q6 :
#   There is no element X in array A such that X <= 0. Therefore, answer is "No Solution".
#
#######################################################################################################################
