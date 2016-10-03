# Roy and Symmetric Logos

#######################################################################################################################
#
#   Roy likes Symmetric Logos. How to check whether a logo is symmetric?
#   Align the center of logo with the origin of Cartesian plane. Now if the colored pixels of the logo are symmetric
#   about both X-axis and Y-axis, then the logo is symmetric.
#
#   You are given a binary matrix of size N x N which represents the pixels of a logo.
#   1 indicates that the pixel is colored and 0 indicates no color.
#
#   For instance: Take a 5x5 matrix as follows:
#   01110
#   01010
#   10001
#   01010
#   01110
#
#   Graphically it is represented as follows: (diagram)
#   Observe that it is symmetric about both X-axis and Y-axis.
#   Let's take another example of 5x5 matrix:
#
#   00100
#   01010
#   10001
#   01010
#   01110
#
#   Graphically it is represented as follows: (diagram)
#   Now this logo is symmetric about Y-axis but it is not symmetric about X-axis.
#   Your task is to output YES if the logo is symmetric else output NO.
#
#   Input:
#   First line contains T - number of test cases.
#   T test cases follow.
#   First line of each test case contains the N - size of matrix.
#   Next N lines contains binary strings of length N.
#
#   Output:
#   Print YES or NO in a new line for each test case
#
#   Constraints:
#   1 ≤ T ≤ 10
#   2 ≤ N ≤ 32
#
#   Note: There will always be atleast 1 colored pixel in input data.
#
#   SAMPLE INPUT
#   5
#   2
#   11
#   11
#   4
#   0101
#   0110
#   0110
#   0101
#   4
#   1001
#   0000
#   0000
#   1001
#   5
#   01110
#   01010
#   10001
#   01010
#   01110
#   5
#   00100
#   01010
#   10001
#   01010
#   01110
#
#   SAMPLE OUTPUT
#   YES
#   NO
#   YES
#   YES
#   NO
#
#   Explanation
#   Test Case #1: Symmetric about both axes, so YES.
#   Test Case #2: Symmetric about X-axis but not symmetric about Y-axis, so NO.
#   Test Case #3: Symmetric about both axes, so YES.
#   Test Case #4 and #5 are explained in statement.
#
#######################################################################################################################
