# Rank It

#######################################################################################################################
#
#   You have been given an array A consisting of N integers. All the elements in this array A are unique.
#   You have to answer some queries based on the elements of this array. Each query will consist of a single
#   integer x. You need to print the rank based position of this element in this array considering that the array
#   is 1 indexed. The rank based position of an element in an array is its position in the array when the array
#   has been sorted in ascending order.
#   Note: It is guaranteed that all the elements in this array are unique and for each x belonging to a query,
#   value ′x′ shall exist in the array
#
#   Input Format
#   The first line consists of a single integer N denoting the size of array A.
#   The next line contains N unique integers, denoting the content of array A.
#   The next line contains a single integer q denoting the number of queries.
#   Each of the next q lines contains a single integer x denoting the element
#   whose rank based position needs to be printed.
#
#   Output Format
#   You need to print q integers denoting the answer to each query.
#
#   Constraints
#   1 <= N <= 10^5
#   1 <= A[i] <= 10^9
#   1 <= q <= 10^5
#   1 <= x <= 10^9
#
#   SAMPLE INPUT
#   5
#   1 2 3 4 5
#   5
#   1
#   2
#   3
#   4
#   5
#
#   SAMPLE OUTPUT
#   1
#   2
#   3
#   4
#   5
#
#######################################################################################################################

n = int(input().strip())
a = [int(path) for path in input().strip().split(' ')]
a.sort()

low = 0
high = len(a) - 1

q = int(input().strip())

def binSearch(low, high, key, a):
    lower = low
    higher = high
    a = a
    while(lower < higher):
        mid = ( (lower + higher)//2 )
        #print(0,key,mid)
        if key < a[mid] :
            higher = mid - 1
        elif key > a[mid] :
            lower = mid + 1
        else:
            return mid
    return lower

for z in range(q):
    key = int(input().strip())  # number to search
    found = binSearch(low, high, key, a)
    print(found + 1) # as list starts from 0
