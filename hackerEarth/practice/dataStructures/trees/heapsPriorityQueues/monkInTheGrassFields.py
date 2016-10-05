# Monk in the Grass Fields

#######################################################################################################################
#
#   Our code monk, high on excitement after solving the rest of the problems , goes on a trek in the mountains .
#   On his way, he encounters Janemba, the evil magician! Janemba takes our monk to a poison field and plays
#   a game with him described as follows:
#   The poison field is described as NxN matrix,divided into N * N cells. Each cell of the field has a value of
#   discomfort in it pertaining to the poison content. Monk has been cursed with K curses. In each curse,
#   the monk must do one of the following:
#
#   1) Choose one row of the field and consume the poisonous fumes from all the cells in that row. The discomfort
#   caused is the sum of discomfort from each cell in the row. After consuming, the discomfort of all cells
#   in the row increases by one.
#   2) Choose one column of the field and consume the poisonous fumes from all the cells in that column.
#   The discomfort caused is the sum of discomfort from each cell in the column. After consuming, the discomfort
#   of all cells in the column increases by one.
#
#   Our monk has a level of tolerance. A very high level of discomfort will cause him to die!
#   Help him out by finding the Minimum discomfort possible by optimally completing the curses.
#
#   Input:
#   First line contains T, the number of test cases. T test cases follow.
#   First line of each test case contains two space separated integers N and K. N lines follow. Each of the lines
#   contains N space-separated integers representing Mij, the value of discomfort of cells in that row.
#
#   Output:
#   For each test case, output the minimum discomfort possible in a new line.
#
#   Constraints:
#   1 ≤ T ≤ 100
#   1 ≤ N ≤ 200
#   1 ≤ K ≤ 400
#   1 ≤ Mij ≤ 1000
#
#   SAMPLE INPUT
#   4
#   2 1
#   1 3
#   2 4
#   2 2
#   1 3
#   2 4
#   2 3
#   1 3
#   2 4
#   2 4
#   1 3
#   2 4
#
#   SAMPLE OUTPUT
#   3
#   8
#   14
#   22
#
#   Explanation
#   Test Case #4:
#   Initial state:
#   1 3
#   2 4
#   The monk chooses the first column, discomfort=3 . Elements change to
#   2 3
#   3 4
#   He now chooses the first row, discomfort=3+5=8 . Elements change to
#   3 4
#   3 4
#   He chooses the first column, discomfort= 8+6=14. Elements change to
#   4 4
#   4 4
#   He chooses the second column, discomfort=14+8=22
#
#######################################################################################################################
