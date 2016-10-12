# Counting In Byteland

#######################################################################################################################
#
#   For once, lets assume Byteland to be a 3 dimensional space of size N X N X N. The Lolympics Committee has
#   decided that every contingent representing a country will stay in a hotel at a particular coordinate denoted
#   by its x-axis, y-axis and z-axis. Now, the Players Welfare Association(PWA) has to answer some queries as well
#   as give accommodation to the Lolympic players. There will be Q number of queries which can be of two types:-
#   1. 1 x y z val - A contingent consisting of val number of players have been alloted a hotel
#       in the coordinate (x,y,z).
#   2. 2 x y z X Y Z- Calculate the total number of players who are not residing in the coordinates ranging
#       from (x <= xi <= X, y <= yi <= Y, z <= zi <= Z)
#
#   Constraints:
#   1 <= N <= 10^2
#   1 <= Q <= 10^5
#   0 <= x,y,z <= X,Y,Z <= N
#   1 <= val <= 10^9
#
#   Input:
#   The first line consists of two numbers N and Q.
#   Next Q lines consists of queries of the two forms mentioned above.
#
#   Output:
#   Print the answer for query 2 in a single line.
#
#   SAMPLE INPUT
#   10 6
#   1 0 0 6 6
#   1 9 9 9 10
#   1 8 5 9 5
#   2 3 4 5 9 10 9
#   1 6 6 1 23
#   2 0 0 0 8 9 10
#
#   SAMPLE OUTPUT
#   6
#   10
#
#   Explanation
#   For the first query of type 2, the number of players residing in the coordinates ranging from (3,4,5)
#       to (9,10,9) is 15. So answer is 21 - 15 = 6.
#   For the second query of type 2, the number of players residing in the coordinates ranging from (0,0,0)
#       to (8,9,10) is 34. So answer is 44 - 34 = 10.
#
#######################################################################################################################
