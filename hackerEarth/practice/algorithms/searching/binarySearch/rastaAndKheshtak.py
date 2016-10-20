# Rasta and Kheshtak

#######################################################################################################################
#
#   Rasta is a big fan of Kheshtaks. A Kheshtak is a rectangle that in each of it cells there is an integer.
#   Today rasta came up with an interesting problem, Biggest Common Subsquare (BCS). A Kheshtak is called a
#   Square if the number of its columns is equal to the number of its rows. A Square S is called a subsqaue of a
#   Kheshtak A if and only if we can turn A to S by deleting some of its rows and some of its columns (maybe none).
#   He gives you two Kheshtaks, A and B (A one is n × m and B is x × y).
#
#   Input format
#   The first line of input contains n and m.
#
#   Then you are given A (n lines, in each line there are m space separated integers).
#   After that you are given x and y.
#   Then you are given B (x lines, in each line there are y space separated integers).
#   1  <=  n, m, x, y  <=  700 and all numbers in A and B are integers in the interval [1, 1000].
#
#   Output format
#   Print the size of BCS of A and B in a single line (size of a Square is number of its rows).
#
#   SAMPLE INPUT
#   3 3
#   1 2 0
#   1 2 1
#   1 2 3
#   3 3
#   0 1 2
#   1 1 2
#   3 1 2
#
#   SAMPLE OUTPUT
#   2
#
#######################################################################################################################
