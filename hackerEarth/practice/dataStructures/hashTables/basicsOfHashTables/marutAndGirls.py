# Marut and Girls

#######################################################################################################################
#
#   Marut is now a well settled person. Impressed by the coding skills of Marut, N girls wish to marry him.
#   Marut will consider marriage proposals of only those girls who have some special qualities. Qualities are
#   represented by positive non-zero integers.
#   Marut has a list of M qualities which he wants in a girl. He can also consider those girls who have some
#   extra qualities, provided they have at least all those qualities which Marut wants.
#   Find how many girls' proposal will Marut consider.
#
#   Input:
#   First line contains the integer M, denoting the number of qualities which Marut wants.
#   Next line contains M single space separated distinct integers.
#   Third line contains an integer N, denoting the number of girls.
#   Next follow N lines, ith line contains few single-space separated distinct integers,
#   denoting the qualities of the ith girl.
#
#   Output:
#   Print the number of girls, whose proposals will be considered by Marut.
#
#   Constraints:
#   1 ≤ M ≤ 100
#   1 ≤ N ≤ 9 x 103
#   1 ≤ Maximum no. of qualities possessed by girls ≤ 1000.
#   Qualities are positive non-zero integers such that 1 ≤ Quality ≤ 104
#
#   Subtask 1: ( 30 points )
#   1 ≤ M ≤ 10
#   1 ≤ N ≤ 100
#   1 ≤ Maximum no. of qualities possessed by girls ≤ 100.
#   Qualities are positive non-zero integers such that 1 ≤ Quality ≤ 1000
#
#   Subtask 2: ( 70 points )
#   Original constraints
#
#   Sample Input:
#   5
#   1 2 3 4 5
#   3
#   1 2 3 4 5 6
#   1 2 3 4 5
#   1 2 3 4
#
#   Sample Output:
#   2
#
#   SAMPLE INPUT
#   5
#   1 2 3 4 5
#   3
#   1 2 3 4 5 6
#   1 2 3 4 5
#   1 2 3 4
#
#   SAMPLE OUTPUT
#   2
#
#   Explanation
#   Only the first and second girls have all qualities which Marut wants.
#
#######################################################################################################################
