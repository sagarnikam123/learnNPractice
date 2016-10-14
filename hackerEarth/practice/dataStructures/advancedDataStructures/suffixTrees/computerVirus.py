# Computer Virus

#######################################################################################################################
#
#   Oh no! The virus infected Nick's computer after he downloaded a bunch of TAS preparation books from BayPirate,
#   and now he needs your (the best programmer in Lalalandia's) help!
#   The virus encrypted the data, closed all the programs, and only thing Nick sees on his screen is the matrix
#   with N∗M cells each containing 0 or 1 only. All cells also have color. Initially all the cells are black.
#   Then virus opens Q windows. In the ith window, Nick sees coordinates of two points: x1, y1 and x2, y2,
#   respectively. This means that the virus paints all the cells, which are between these points, in white.
#   More formally, let x and y be the coordinates of the cell, then the program will paint it in white only
#   if x1 <= x <= x2 and y1 <= y <= y2. After the painting, each window requires the password, which is the maximal
#   area A of the rectangle, which has at least one 1 in each column and all of its cells are white. Note that all
#   windows are independent, so if the cell is painted white in one window,
#   it will not be painted in all other windows. Can you help Nick with this tricky problem?
#
#   Input format
#   The first line contains 2 integers: N and M - the number of rows and columns, respectively.
#   The next N lines describe the matrix: each contains M numbers of 0 or 1 only, without separating spaces
#   (see the samples for more explanation).
#   The next line consists of integer Q - the number of windows. Next Q lines describe the i th window:
#   each contains the coordinates of the left and right boundaries x1,y1 and x2,y2.
#
#   Output format
#   The Q lines should each contain single integer A - the password for the window i (1 <= i <= Q ).
#
#   Constraints:
#   1 <= N <= 2000 , 1 <= N∗M <= 4000000
#   1 <= Q <= 1000000
#   1 <= x1 <= x2 <= N , 1 <= y1 <= y2 <= M
#
#   SAMPLE INPUT
#   4 4
#   0000
#   0010
#   0100
#   1000
#   1
#   1 2 3 4
#
#   SAMPLE OUTPUT
#   6
#
#   Explanation
#   In the first window, the virus will paint the following cells in white:
#   coloring the table (diagram)
#   We can choose this rectangle with area 6, because it has one 1 in each row:
#   choosing the rectangle (diagram)
#   so our answer is 6.
#
#######################################################################################################################
