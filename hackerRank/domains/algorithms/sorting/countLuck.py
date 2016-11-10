# Count Luck

#######################################################################################################################
#
#   Ron and Hermione are deep in the Forbidden Forest collecting potion ingredients, and they've managed to lose
#   their way. The path out of the forest is blocked, so they must make their way to a portkey that will
#   transport them back to Hogwarts.
#   Consider the forest as an N * M grid. Each cell is either empty (represented by X) or blocked by a tree
#   (represented by ). Ron and Hermione can move (together inside a single cell) LEFT, RIGHT, UP, and DOWN through
#   empty cells, but they cannot travel through a tree cell. Their starting cell is marked with the character M,
#   and the cell with the portkey is marked with a *. The upper-left corner is indexed as (0,0).
#
#   .X.X......X
#   .X*.X.XXX.X
#   .XX.X.XM...
#   ......XXXX.
#
#   In example above, Ron and Hermione are located at index (2,7) and the portkey is at (1,2). Each cell is indexed
#   according to Matrix Conventions
#   Hermione decides it's time to find the portkey and leave. Each time they are able to move in more than one
#   direction, she waves her wand and it points to the correct direction. Ron is betting that she will have to wave
#   her wand exactly k times. Can you determine if Ron's guesses are correct?
#   Note: It is guaranteed that there is only one path from the starting location to the portkey.
#
#   Input Format
#   The first line contains an integer, , the number of test cases.
#   Each test case is described as follows:
#   The first line contains space-separated integers, and , respectively, denoting the forest matrix.
#   The subsequent lines each contain a string of length describing a row of the forest matrix.
#   The last line contains an integer, , denoting Ron's guess as to how many times Hermione will wave her wand.
#
#   Constraints
#   1 <= T <= 10
#   1 <= N, M <= 100
#   0 <= K <= 10000
#   There will be exactly one M and one * in the forest.
#   Exactly one path exists between M and *.
#
#   Output Format
#   On a new line for each test case, print Impressed if Ron impresses Hermione by guessing correctly;
#   otherwise, print Oops!.
#
#   Sample Input
#   3
#   2 3
#   *.M
#   .X.
#   1
#   4 11
#   .X.X......X
#   .X*.X.XXX.X
#   .XX.X.XM...
#   ......XXXX.
#   3
#   4 11
#   .X.X......X
#   .X*.X.XXX.X
#   .XX.X.XM...
#   ......XXXX.
#   4
#
#   Sample Output
#   Impressed
#   Impressed
#   Oops!
#
#   Explanation
#   For each test case i, count denotes the number of times Hermione waves her wand.
#   Case 0: Hermione waves her wand at (0,2), giving us count = 1. Because count = K-1,
#       we print Impressed on a new line.
#   Case 1: Hermione waves her wand at (2,9), (0,5), and (3,3), giving us count = 3.
#       Because count = K = 3, we print Impressed on a new line.
#   Case 2: Hermione waves her wand at (2,9), (0,5), and (3,3), giving us count = 3.
#       Because count = 3 and K = 4, count =/ (is not equal to) K  and we print Oops! on a new line.
#
#######################################################################################################################
