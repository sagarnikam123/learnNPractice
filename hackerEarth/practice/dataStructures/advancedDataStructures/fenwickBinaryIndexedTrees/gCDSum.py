# GCD Sum

#######################################################################################################################
#
#   Function F is defined as,
#   F(x)=GCD(1,x)+GCD(2,x)+...+GCD(x,x)
#   where GCD is the Greatest Common Divisor.
#
#   Given an array A
#   of size N, there are 2 types of queries:
#   1. C X Y : Compute the value of F(A[X])+F(A[X+1])+F(A[X+2])+....+F(A[Y])(mod(10^9+7))
#   2. U X Y: Update the element of array A[X]=Y
#
#   Input:
#   First line of input contains integer N , size of the array.
#   Next line contains N space separated integers the elements of A.
#   Next line contains integer Q, number of queries.
#   Next Q lines contains one of the two queries.
#
#   Output:
#   For each of the first type of query, output the required sum (mod(10^9+7)).
#
#   Constraints:
#   1 <= N <= 10^6
#   1 <= Q <= 10^5
#   1 <= Ai <= 5⋅10^5
#
#   For Update ,
#   1 <= X <= N
#   1 <= Y <= 5⋅105
#
#   For Compute,
#   1 <= X <= Y <= N
#
#   SAMPLE INPUT
#   3
#   3 4 3
#   6
#   C 1 2
#   C 1 3
#   C 3 3
#   U 1 4
#   C 1 3
#   C 1 2
#
#   SAMPLE OUTPUT
#   13
#   18
#   5
#   21
#   16
#
#######################################################################################################################
