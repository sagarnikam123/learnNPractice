# Gridland Provinces

#######################################################################################################################
#
#   The Kingdom of Gridland contains P provinces. Each province is defined as a 2 x N grid where each cell in the
#   grid represents a city. Every cell in the grid contains a single lowercase character denoting the first character
#   of the city name corresponding to that cell.
#   From a city with the coordinates (i,j) it is possible to move to any of the following cells in 1 unit of time
#   (provided that the destination cell is within the confines of the grid):
#   - (i-1, j)
#   - (i+1, j)
#   - (i, j-1)
#   - (i, j+1)
#   A knight wants to visit all the cities in Gridland. He can start his journey in any city and immediately stops
#   his journey after having visited each city at least once. Moreover, he always plans his journey in such a way
#   that the total time required to complete it is minimum.
#   After completing his tour of each province, the knight forms a string by concatenating the characters of all
#   the cells in his path. How many distinct strings can he form in each province?
#
#   Input Format
#   The first line contains a single integer P, denoting the number of provinces. The 3.P subsequent lines describe
#   each province over the following three lines:
#   The first line contains an integer N, denoting the number of columns in the province.
#   Each of the next two lines contains a string S,
#   of length N denoting the characters for the first and second row of the province.
#
#   Constraints
#   1 <= P <= 15
#   1 <= N <= 600
#   Si E(belongs to) {a-z}
#
#   Output Format
#   For each province, print the number of distinct strings the knight can form on a new line.
#
#   Sample Input
#   3
#   1
#   a
#   a
#   3
#   dab
#   abd
#   5
#   ababa
#   babab
#
#   Sample Output
#   1
#   8
#   2
#
#   Explanation
#   Province 0:
#   query 0
#   The knight can only form one string (aa), so we print 1 on a new line.
#
#   Province 1:
#   query 1
#   The knight can form eight different strings (abdbad, adabdb, badabd, bdbada, dababd, dabdba, dbabad, and dbadab),
#   so we print 8 on a new line.
#
#   Province 2:
#   query 2
#   The knight can form two different strings (ababababab and bababababa), so we print 2 on a new line.
#
#######################################################################################################################
