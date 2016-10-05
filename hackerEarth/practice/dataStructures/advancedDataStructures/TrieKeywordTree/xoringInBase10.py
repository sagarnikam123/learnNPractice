# Xoring in Base 10

#######################################################################################################################
#
#   Given two numbers A=(A0A1...An) and B=(B0B1..Bn) in base 10, we define the xor of A and B as A⊙B=(X0X1...Xn),
#   where Xi=(Ai+Bi)mod10.
#   Little Achraf has an array S of integers in base 10 and he was asked by his professor Toman to find the maximum
#   number he can get by xoring exactly k numbers.
#
#   Input format:
#   First line contains two integers n
#   and k, denoting the number elements in the sequence, and the number of integers you have to xor.
#   Next line contains n
#
#   integers.
#
#   Output format:
#   Output a single integer denoting the answer of the problem in base 10.
#
#   Constraints:
#   1 <= n <= 40
#   1 <= k <= n
#   0 <= Si <= 109, for all i∈[1,n]
#
#   SAMPLE INPUT
#   3 2
#   4 1 5
#
#   SAMPLE OUTPUT
#   9
#
#   Explanation
#   By choosing numbers 5 and 4, you will get the maximum score.
#
#######################################################################################################################
