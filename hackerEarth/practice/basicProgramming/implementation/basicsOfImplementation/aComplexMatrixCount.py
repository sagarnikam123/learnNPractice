# A Complex Matrix Count

#######################################################################################################################
#
#   You will be given a matrix of size N × M, and you need to count the number of submatrices
#   which has atleast K occurrences of X and atleast two corner elements equal.
#   These submatrices should have minimum two rows and two columns.
#
#   Input:
#   First line of the input contains four space separated integers, N, M, K and X respectively.
#   Next N lines contain M space separated integers denoting the matrix
#
#   Output:
#   Output a single line containing the answer.
#
#   Constraints:
#   1 <= N,M <= 100
#   1 <= K <= 20
#   1 <= X <= 100
#   1 <= Ai,j <= 100
#
#   SAMPLE INPUT
#   3 3 2 1
#   1 2 3
#   1 3 6
#   22 1 33
#
#   SAMPLE OUTPUT
#   4
#
#   Explanation
#   Here, the four submatrices are :-
#   1    1 2
#        1 3
#   2    1 2 3
#        1 3 6
#   3    1 2
#        1 3
#        22 1
#   4    1 3
#        22 1
#
#######################################################################################################################
