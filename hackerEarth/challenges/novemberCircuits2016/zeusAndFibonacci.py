# Zeus and Fibonacci

#######################################################################################################################
#
#   You are given an array A consisting of N integers. You have to process two types of queries on this array.
#   Type 1: Change the ith element to X
#   Type 2: Given l and r, calculate: r∑i=lr∑j=iFib(j∑k=iAk)
#
#   Note: Fib(i)
#   is the ith Fibonacci number. Fib(0)=0 . Fib(1)=1
#
#   Input
#   First line contains an integer N.
#   Next line contains N space separated integers denoting array A.
#   Next line contains the integer Q.
#   Next Q lines are of the following format:
#   1 i X : for type 1 query
#   2 l r : for type 2 query
#
#   Output
#   For each type 2 query output the answer modulo 109+7 on a new line.
#
#   Constraints
#   1 <= N,Q <= 10^5
#   1 <= A[i],x <= 10^9
#   1 <= l,r,i <= N
#   l <= r
#
#   SAMPLE INPUT
#   3
#   1 2 3
#   2
#   2 1 2
#   2 1 3
#
#   SAMPLE OUTPUT
#   4
#   19
#
#   Explanation
#   Query 1:
#   possible subarrays : (1),(2),(1,2)
#   Corresponding sums : 1 ,2 ,3
#   Corresponding fibonacci: 1 , 1, 2
#   Sum of fibnoacci : 1 + 1+2=4
#   output : 4%(10^9+7)=4
#   Query 2:
#   possible subarrays : (1),(2),(3),(1,2),(2,3),(1,2,3)
#   Corresponding sums : 1,2,3,3,5,6
#   Corresponding fibonacci: 1,1,2,2,5,8
#   Sum of fibnoacci : 19
#   output : 19%(10^9+7)=19
#
#######################################################################################################################
