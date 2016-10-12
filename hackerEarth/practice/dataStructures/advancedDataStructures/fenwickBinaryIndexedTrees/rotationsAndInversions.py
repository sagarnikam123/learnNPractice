# Rotations and Inversions

#######################################################################################################################
#
#   Rahul has recently learnt about array inversions. An array a has N integers, indexed from 0 to N - 1.
#   Formally, the number of inversions is the number of pairs (i, j) such that 0 <= i < j < N and a[i] > a[j].
#   Now, he wants to find the lexicographically smallest left rotation of the array such that number of inversions are
#   maximized. The index of rotation is defined as the number of elements from the front that need to left rotated.
#   For example, given the array with elements a[0], a[1], a[2], ..., a[N - 1], the rotation with index 1
#   will be a[1], a[2], ..., a[N - 1], a[0]; the rotation with index k will be a[k], a[k + 1], ..., a[N - 1],
#   a[0], ..., a[k - 1].
#   Note that in case, multiple lexicographically equal rotations are found to have the largest number of inversions,
#   you should print the smallest index of rotation.
#   An array a of integers is lexicographically smaller than another array b if a[i] = b[i]
#   for all indices 0  <=  i < k and a[k] < b[k].
#
#   Input
#   The first line shall contain a single integer T, denoting the number of test cases to follow.
#   Each of the test cases contain 2 lines each. The first line has an integer N, the size of array and the next line
#   has N integers separated by a single space.
#
#   Output
#   You should output exactly T lines, each containing 2 numbers, the selected index for rotation and the maximum
#   number of inversions found, separated by a single space.
#
#   Constraints
#   1  <=  T  <=  10
#   1  <=  N  <=  10^5
#   1  <=  A[i]  <=  10^9
#
#   SAMPLE INPUT
#   2
#   3
#   1 2 3
#   4
#   1 1 1 1
#
#   SAMPLE OUTPUT
#   1 2
#   0 0
#
#   Explanation
#   Case 1:
#   Possible rotations are:
#   [1, 2, 3] with index 0 and inversions 0
#   [2, 3, 1] with index 1 and inversions 2
#   [3, 1, 2] with index 2 and inversions 2
#   Notice that [2, 3, 1] is lexicographically smaller than [3, 1, 2]. Hence, answer is 1 2.
#   Notice that [1, 2, 3] is the smallest lexicographical but
#       it cannot be considered since the number of inversions is lesser.
#
#   Case 2:
#   All the elements are equal, so we have all rotations as lexicographically equal and same number of inversions.
#   We must choose the smallest index and hence answer is 0 0.
#
#######################################################################################################################
