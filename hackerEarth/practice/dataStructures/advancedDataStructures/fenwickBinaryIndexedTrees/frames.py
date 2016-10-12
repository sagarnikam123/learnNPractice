# Frames

#######################################################################################################################
#
#   You are given a NxM matrix consisting of 0s and 1s. Find the number of square frames with no 1s (each cell is 0)
#   in this matrix. A frame of a fixed square is a group of cells each of them is one of the leftmost, rightmost,
#   topmost or bottommost cells. Thus a square frame with the side length 1 contains 1 cell, with the side length 2
#   contains 4, with the side length 3 - 8 cells, with the side length 4 - 12 cells.
#
#   Input
#   The first line contains two integers N and M.
#   Next N lines contain M characters each. Every character is either 1 or 0.
#
#   Output
#   Output one integer - the number of square frames consisting only of 0s.
#
#   Constraints
#       1  <= N, M  <=  2000
#       1  <= N, M  <=  10 in 40% of the test data
#       1  <= N, M  <=  100 in 70% of the test data
#
#   SAMPLE INPUT
#   3 4
#   0100
#   0100
#   0000
#
#   SAMPLE OUTPUT
#   12
#
#######################################################################################################################
