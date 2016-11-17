# Find Product

#######################################################################################################################
#
#   You have been given an array A of size N consisting of positive integers. You need to find and print the
#   product of all the number in this array Modulo 10^9 + 7.
#
#   Input Format:
#   The first line contains a single integer N denoting the size of the array. The next line contains N space
#   separated integers denoting the elements of the array
#
#   Output Format:
#   Print a single integer denoting the product of all the elements of the array Modulo 10^9 + 7.
#
#   Constraints:
#   1 <= N <= 10^3
#   1 <= A[i] <= 10^3
#
#   SAMPLE INPUT
#   5
#   1 2 3 4 5
#
#   SAMPLE OUTPUT
#   120
#
#   Explanation
#   There are 5
#   integers to multiply. Let's store the final answer in answer variable. Since 1 is identity value for
#   multiplication, initialize answer as 1. So the process goes as follows:
#   answer=1
#   answer=(answer×1) % (109+7)
#   answer=(answer×2) % (109+7)
#   answer=(answer×3) % (109+7)
#   answer=(answer×4) % (109+7)
#   answer=(answer×5) % (109+7)
#
#   The above process will yield answer as 120
#
#######################################################################################################################
