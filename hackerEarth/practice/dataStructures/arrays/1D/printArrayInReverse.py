# Print Array in Reverse

#######################################################################################################################
#
#   Given the size and the elements of array A, print all the elements in reverse order.
#
#   Input:
#   First line of input contains, N - size of the array.
#   Following N lines, each contains one integer, ith element of the array i.e. A[i]
#
#   Output:
#   Print all the elements of the array in reverse order, each element in a new line.
#
#   Constraints:
#   1 <= N <= 100
#   0 <= A[i] <= 1000
#
#   input
#   5
#   4
#   12
#   7
#   15
#   9
#
#   output
#   9
#   15
#   7
#   12
#   4
#
#######################################################################################################################

n = int(input().strip())

arrayTo = []

for kt in range(n):
    arrayTo.append( int(input().strip()) )

for taumTum in range(n-1,-1,-1):
    print(arrayTo[taumTum])
