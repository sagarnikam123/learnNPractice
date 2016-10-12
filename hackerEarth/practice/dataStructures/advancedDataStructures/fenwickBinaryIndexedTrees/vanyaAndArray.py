# Vanya and Array

#######################################################################################################################
#
#   Let's define 2 functions a function F(i) and Val(i,j) for an Array A of size N as follows:
#   F(i)= ∑Nj=i+1 Val(i,j)
#   Val(i,j)= 1 ,if A[i]<A[j], else, Val(i,j)= 0.
#
#   Now, Vanya has been given one such array A of size N and an integer K. She needs to find the number of
#   Distinct Unordered Pairs of elements (a,b) in array A such that F(a) + F(b) ≥ K .
#
#   Input Format:
#   The first line contains 2 space separated integers N and K denoting the size of array A and the integer k
#   from the description given above. The next line contains N space separated integers
#   denoting the elements of array A.
#
#   Output Format:
#   You need to print the required answer on a single line.
#
#   Constraints:
#   Subtask 1: (Worth 40% of the total points):
#   1 <= N <= 5000
#   1 <= A[i] <= 10^5
#   0 <= K <= 10^4
#
#   Subtask 2: (Worth 60% of the total points) :
#   1 <= N <= 10^6
#   1 <= A[i] <= 10^9
#   0 <= K <= 10^9
#
#   SAMPLE INPUT
#   8 10
#   1 3 2 4 5 6 8 7
#
#   SAMPLE OUTPUT
#   5
#
#   Explanation
#   Here the values of Function F(x)
#   for all the elements of Array A from 1 to N
#   are:
#   [7,5,5,4,3,2,0,0]
#
#   So, the following 5 unordered pairs are considered:
#   (1,2)
#   (1,3)
#   (1,4)
#   (1,5)
#   (2,3)
#
#######################################################################################################################
