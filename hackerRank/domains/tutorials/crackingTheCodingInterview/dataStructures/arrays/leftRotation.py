# Left Rotation

#######################################################################################################################
#
#   A left rotation operation on an array of size n shifts each of the array's elements 1 unit to the left.
#   For example, if 2 left rotations are performed on array [1,2,3,4,5], then the array would become [3,4,5,1,2].
#   Given an array of n integers and a number d, perform d left rotations on the array.
#   Then print the updated array as a single line of space-separated integers.
#
#   Input Format
#   The first line contains two space-separated integers denoting the respective values of n (the number of integers)
#   and d (the number of left rotations you must perform). The second line contains n space-separated integers
#   describing the respective elements of the array's initial state.
#
#   Constraints
#   1 <= n <= 10^5
#   1 <= d <= n
#   1 <= ai <= 10^6
#
#   Output Format
#   Print a single line of n space-separated integers
#   denoting the final state of the array after performing d left rotations.
#
#   Sample Input
#   5 4
#   1 2 3 4 5
#
#   Sample Output
#   5 1 2 3 4
#
#   Explanation
#   When we perform d=4 left rotations, the array undergoes the following sequence of changes:
#       [1,2,3,4,5] -> [2,3,4,5,1] -> [3,4,5,1,2] -> [4,5,1,2,3] -> [5,1,2,3,4]
#   Thus, we print the array's final state as a single line of space-separated values, which is 5 1 2 3 4
#
#######################################################################################################################

def array_left_rotation(a, n, k):
    for singleRotate in range(k):
        shiftElementa = a[0]
        a.remove(shiftElementa)
        a.append(shiftElementa)
    return a

n, k = map(int, input().strip().split(' '))
a = list(map(int, input().strip().split(' ')))
answer = array_left_rotation(a, n, k);
print(*answer, sep=' ')
