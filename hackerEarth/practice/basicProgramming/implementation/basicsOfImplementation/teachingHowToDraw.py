# Teaching how to draw

#######################################################################################################################
#
#   HackerMan has brought a new drawing book for his child, which consists only of geometric shapes. Its consists
#   of lessons where the child has to make drawings using the geometric shapes. The first lesson is based on how
#   to use squares to build different objects.
#   You are task is to help HackerMan in teaching one part of this lesson. You have to help him in determining,
#   given S number of squares, how many distinct rectangles you can build out of that.
#   Two rectangles are considered different if none of them can be rotated and moved to obtain the second one.
#   During rectangle construction, the child can neither deform the squares nor put any squares upon any other ones.
#   Note: All the squares are of the same configuration.
#
#   Constraints
#   Each file will not contain T test cases where 1 <= T <= 100
#   1 <= S <= 1000
#
#   Input
#   There will be one line of input that will contain an integer N (1 <= N <= 100) which represents the number of
#   test cases, each subsequent line contains an integer S that represents the number of squares available.
#
#   Output
#   Each line should contain a single integer equal to the number of different rectangles that the child can form
#   using the corresponding number of squares in that line of input.
#
#   Explanation of sample below
#   There are a total of 3 test cases.
#   Only 1 rectangle can be made using 1 square, and its the square itself.
#   2 rectangles can be made using 2 square, one is the square itself and the other is formed
#   by joining the 2 squares. A total of 5 rectangles can be made using 4 squares. 4 rectangles will be only
#   1 square wide and 1 rectangle will be 2 squares wide.
#
#   SAMPLE INPUT
#   3
#   1
#   2
#   4
#
#   SAMPLE OUTPUT
#   1
#   2
#   5
#
#######################################################################################################################
