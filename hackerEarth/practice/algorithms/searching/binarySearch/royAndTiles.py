# Roy and Tiles

#######################################################################################################################
#
#   Roy is playing Tiles game. It consists of a Source node and Destination node and a tiles grid of size NxN.
#   Grid lies in between Source and Destination (See the image below).
#   All of them have some value associated with them denoted by S (Source value), D (Destination value) and
#   grid[i][j] (tile value) where 1≤i≤N, and 1≤j≤N.
#
#   (diagram)
#
#   Roy is at the Source node and he has to reach Destination node to finish the game. Rules of the game are:
#       We can move from Source to any tile of row1, if the value of that tile is 1 greater than Source.
#       In other words, we can move from source to grid[1][j] , if grid[1][j] = 1+S where 1≤j≤N.
#       We can move from rowi to any tile of rowi+1, if the value of the tile at rowi+1 is 1 greater than the
#       current tile's value. In other words,
#       we can move from grid[i][j1] to grid[i+1][j2], if grid[i+1][j2] = 1+grid[i][j1] where 1≤j1, j2≤N.
#       We can move from last row to Destination node, if the value of the Destination node is 1 greater than
#       the current tile's value. In other words, we can move from grid[N][j] to Destination node,
#       if D = 1+grid[N][j] where 1≤j≤N.
#   Your task is to find the number of ways Roy can move from Source to Destination node. Since the answer
#   can be very large, output it modulo 1000000007. Note that there are several queries
#   with separate values of S and D on the same grid.
#
#   Input:
#   First line contains T - number of test cases.
#   First line of each test case contains size of grid N.
#   Next N lines each contains N space separated integers.
#   Followed by integer Q, number of queries.
#   Each of the next Q lines contains two space separated integers, S and D.
#
#   Output:
#   For each query of each test case, print in a new line number of ways Roy can go from S to D.
#
#   Constraints:
#   1 ≤ T ≤10
#   1 ≤ N ≤1000
#   1 ≤ grid[i][j] ≤ 10^9
#   1 ≤ Q ≤ 1000
#   1 ≤ S,D ≤ 10^9
#   Sum of (Q*N) over all the test cases in each file will not exceed 106
#
#   Sample Explanation:
#   Query 1:
#   Consider the test case as shown in the image:
#
#   From source, there are 2 ways to move to row1 (tiles with value 4)
#   From row1, there is only 1 way to move to row2 (tile with value 5)
#   From row2, again there is only one way to move to row3 (tile with value 6)
#   From row3, there are 3 ways to move to row4 (tiles with value 7)
#   And then there's 1 way to move to destination.
#
#   So total 2 * 1 * 1 * 3 * 1 = 6 ways. They are:
#
#   1st way: S → grid[1][3] → grid[2][1] → grid[3][3] → grid[4][1] → D
#   2nd way: S → grid[1][3] → grid[2][1] → grid[3][3] → grid[4][2] → D
#   3rd way: S → grid[1][3] → grid[2][1] → grid[3][3] → grid[4][3] → D
#   4th way: S → grid[1][4] → grid[2][1] → grid[3][3] → grid[4][1] → D
#   5th way: S → grid[1][4] → grid[2][1] → grid[3][3] → grid[4][2] → D
#   6th way: S → grid[1][4] → grid[2][1] → grid[3][3] → grid[4][3] → D
#
#   Query 2:
#   1st way: S → grid[1][2] → grid[2][2] → grid[3][1] → grid[4][4] → D
#   2nd way: S → grid[1][2] → grid[2][4] → grid[3][1] → grid[4][4] → D
#   3rd way: S → grid[1][2] → grid[2][2] → grid[3][3] → grid[4][4] → D
#   4th way: S → grid[1][2] → grid[2][4] → grid[3][3] → grid[4][4] → D
#
#   SAMPLE INPUT
#   1
#   4
#   2 6 4 4
#   5 7 1 7
#   8 9 8 6
#   7 7 7 9
#   2
#   3 8
#   5 10
#
#   SAMPLE OUTPUT
#   6
#   4
#
#######################################################################################################################
