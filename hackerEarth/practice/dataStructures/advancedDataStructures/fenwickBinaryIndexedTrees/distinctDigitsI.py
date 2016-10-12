# Distinct Digits I

#######################################################################################################################
#
#   Andi and Bob are best friends. They both are good programmers as well. They love programming together because
#   if one of them gets stuck on some problem other can help. But these days Andi is quite busy as his exams are
#   approaching. So, Bob has to tackle the problems alone. While practicing on HackerEarth Bob encounters an
#   interesting problem which he was unable to solve efficiently. So, he asked Andi for help.
#   Problem as stated by Bob :
#   Given an array of N elements, Q queries need to be processed over this array.
#   A query can be of any of the following three types:
#
#   Type 0: u v
#   Type 1: u v
#   Type 2: l r c
#
#   Explanation:
#   for query Type 0: add v to the uth element of the array
#   for query Type 1: replace uth element of the array by v
#   for query Type 2: count the number of numbers which have c distinct digits between l to r, both inclusive
#   Andi likes the problem very much and wants to solve it. But being super busy with his exams, he has no time
#   to help Bob. Also, he can’t let Bob feel helpless with any problem.
#   So can you please help Bob and save their friendship?
#   NOTE: Value of an array element never exceeds the range of 64 bit integer (1018).
#
#   Input:
#   First line of the input contains a single integer N denoting the number of elements in the array.
#   Next line of the input contains N space separated integers. Third line contains a single integer Q denoting
#   the number of queries to be processed over the array. Next Q lines of input contain
#   Q queries (one query per line).
#
#   Output:
#   for each query of type 2
#   print the desired answer.
#
#   Constraints:
#   1 <= Q,N <= 10^5
#   1 <= A[i] <= 10^15
#   1 <= v <= 10^15
#   1 <= u,l,r <= N
#
#   SAMPLE INPUT
#   5
#   1 2 3 4 5
#   5
#   2 1 5 1
#   1 1 33
#   2 1 5 1
#   0 1 1
#   2 1 5 1
#
#   SAMPLE OUTPUT
#   5
#   5
#   4
#
#######################################################################################################################
