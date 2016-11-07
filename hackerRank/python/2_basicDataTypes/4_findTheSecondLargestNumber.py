# Find the Second Largest Number

#######################################################################################################################
#
#   You are given N numbers. Store them in a list and find the second largest number.
#
#   Input Format
#   The first line contains N. The second line contains an array A[] of N integers each separated by a space.
#
#   Constraints
#   2 <= N <= 10
#   -100 <= A[i] <= 100
#
#   Output Format
#   Output the value of the second largest number.
#
#   Sample Input
#   5
#   2 3 6 6 5
#
#   Sample Output
#   5
#
#######################################################################################################################
#
#   input 1
#   10
#   6 6 6 6 6 6 6 6 6 5
#   output 1
#   5
#
#   input 2
#   4
#   57 57 -57 57
#   ouput 2
#   -57
#
#   input 3
#   10
#   6 6 6 6 6 6 6 6 6 5
#   output 3
#   5
#
#   input 4
#   5
#   6 4 5 6 6
#   output 4
#   5
#
#######################################################################################################################

n = int(input().strip())
maltaMaharashtra = [int(x) for x in input().strip().split(' ')]
kheltaMaharashtra = set(maltaMaharashtra)
uniqueMaharashtra = list(kheltaMaharashtra)

uniqueMaharashtra.sort()
uniqueMaharashtra.reverse()
print(uniqueMaharashtra[1])
