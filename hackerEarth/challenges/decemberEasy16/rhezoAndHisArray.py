# Rhezo and his array

#######################################################################################################################
#
#   Rhezo got an array A as a gift from his friend Tanya. Along with this array, she also gave him a list of
#   operations to perform on the array. The operations that are present in the list are the following.
#
#   1.Three integers L,R and X are known, and Rhezo multiplies all numbers in the range [L,R] by X.
#   2.Four integers L,R,X, and Y are known, and Rhezo needs to find out the count of integers in the range [L,R]
#       whose product with X gives a number greater than or equal to Y.
#
#   Now, you being Rhezo's friend, have to help him in simulating the Q operations and report the answer to any
#   operation of type 2. Please help poor Rhezo!
#
#   Input:
#   First line of input contains two integers, N and Q separated by a single space, denoting the number of elements
#   in the array and number of operations to be performed respectively.
#   Next line contains N single space separated integers denoting the elements of array A.
#   Each of the next Q lines contain four or five space separated integers depending upon the query type.
#       - If the 1stinteger is 1, then it is a type 1 operation
#           and next three integers denote L,R and X as mentioned above.
#       - If the 1st integer is 2, then it is a type 2 operation and next four integers denote L,R,X and Y
#
#   Output:
#   For each operation of type 2, report the number of elements in range [L,R]
#   whose product with X gives a number greater than or equal to Y.
#
#   Constraints:
#   1 <= N <= 5⋅10^4
#   1 <= Q <= 10^5
#   1 <= Ai <= 10^9
#   1 <= L <= R <= N
#   2 <= X <= 10^9
#   1 <= Y <= 10^9
#
#   SAMPLE INPUT
#   10 5
#   1 2 3 4 5 6 7 8 9 10
#   2 1 10 2 20
#   2 1 9 2 20
#   2 1 5 3 7
#   1 1 5 2
#   2 1 5 3 7
#
#   SAMPLE OUTPUT
#   1
#   0
#   3
#   4
#
#   Explanation
#   For the first query, only the number 10 at index 10 gives a number greater than
#       or equal to 20 when multiplied by 2.
#   For the third query, only the numbers 3,4 and 5 at indices 3,4 and 5 respectively give a number greater than
#       or equal to 7 when multiplied by 3.
#
#######################################################################################################################
