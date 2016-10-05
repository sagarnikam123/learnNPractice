# Max in Queue

#######################################################################################################################
#
#   You have been given a sequence A of N digits. Each digit in this sequence ranges from 1 to 109. You need to
#   perform 2 types of operations on this list:
#
#       Add(x): Add element x to the end of the list.
#       Max(list) : Find the maximum element in the current sequence.
#   For each query of type 2, you need to print the result of that operation.
#
#   Input Format
#   The first line consist of a single integer N
#   denoting the size of the initial sequence. The next line consists of N space separated integers denoting the
#   elements of the initial sequence. The next line contains a single integer q denoting the number of queries.
#   The next q lines contains the details of the operation. The first integer type indicates the type of query.
#   If typei ==1, it is followed by another integer x and you need to perform operation of type 1
#   else operations of type 2
#
#   Output Format
#   For each operation of the second type, print a single integer on a new line.
#
#   Constraints
#   1 <= N <= 105
#   1 <= a[i] <= 109
#   1 <= q <= 104
#
#   SAMPLE INPUT
#   5
#   1 2 3 4 5
#   4
#   1 1
#   1 2
#   1 3
#   2
#
#   SAMPLE OUTPUT
#   5
#
#######################################################################################################################
