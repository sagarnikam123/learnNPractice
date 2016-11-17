# New game of Oz

#######################################################################################################################
#
#   Today Oz is playing a new game. He has an array arr[] of N distinct integers .
#   In each turn he is will follow two actions -
#   1) He select a random number from arr[]. Say value of this element is X.
#   2) He will remove X from arr[]. if X-1 is present in arr[] then he will remove it. if X+1 is present in arr[]
#   then he will remove it.
#   Oz will make turns until arr[] becomes empty. Oz loves this game so he wants
#   to make maximum number of possible turns. Help Oz to make maximum number of possible turns.
#
#   Input :
#   The first line contains the number of test cases - T . Each test case consist of two lines.
#   First line will contain a integer N - number of elements in arr[].
#   Second line will contain N space separated integers.
#
#   Output :
#   For each test case output maximum number of possible turns that Oz can make.
#
#   Constraints :
#   1 ≤ T ≤ 100
#   1 ≤ N ≤ 100
#   1 ≤ each element of arr[] ≤ 1000
#
#   SAMPLE INPUT
#   1
#   6
#   291 292 295 297 298 299
#
#   SAMPLE OUTPUT
#   4
#
#   Explanation
#   One of the possible way to make 4 turns is
#   by choosing the following elements in each turn: 297, 299, 295, 292.
#
#######################################################################################################################
