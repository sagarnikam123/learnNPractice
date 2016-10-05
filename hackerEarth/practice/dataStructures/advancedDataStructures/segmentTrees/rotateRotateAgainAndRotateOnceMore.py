# Rotate, rotate again and rotate once more

#######################################################################################################################
#
#   Mr Lavit is teacher for physical education at a school. Today he is in bad mood, so he is taking it out on the
#   students of his class. There are N students in his class. Lets mark the students from 1,2,.. upto N. They are
#   standing in a line.Initially, all the students are facing towards EAST.
#   Now he makes them sweat in sun. He gives 3 types of orders to his class
#
#   Order 1: C L R K
#   where C is character 'C', stands for clockwise,
#   L is a number 1 <= L <= N,
#   R is a number L <= R <= N,
#   K is a number denoting number of steps to rotate.
#   This type of order means students in positions [L,R] has to rotate K steps clockwise.
#
#   Order 2: A L R K
#   where A is character 'A', stands for anti-clockwise,
#   L, R, and K are the same as in previous order.
#   This type of order means students in positions [L,R] has to rotate K steps anti-clockwise.
#
#   Order 3: Q L R
#   where Q is character 'Q', stands for query
#   L is a number 1 <= L <= N,
#   R is a number L <= R <= N,
#   This type of order is a query where he asks his class
#   the maximum number of students facing in a same direction in [L,R] positions.
#   If number of students facing in two, or more directions are maximum and equal, output this maximum value.
#   If students answer wrong or answers very late then he may not let them go easily, so they have asked for your
#   help. Answer these queries on their behalf.
#
#   Rotation Explanation:
#   Suppose a student is facing EAST
#   Now if he is ordered to rotate 1 step clockwise then he would turn towards SOUTH,
#   so now he will be facing SOUTH
#
#   He is facing SOUTH, now if he is ordered to rotate 2 step clockwise, then he would turn WEST, then to NORTH.
#   so now he will be facing NORTH
#
#   He is facing NORTH, now if he is ordered to rotate 5 steps anti-clockwise,
#   then he would turn (1) WEST, (2) SOUTH, (3) EAST, (4) NORTH , then (5) WEST so now he would be facing WEST.
#
#   Clockwise direction [ EAST-->SOUTH-->WEST-->NORTH-->EAST ]
#   Anti-Clockwise direction [ EAST-->NORTH-->WEST-->SOUTH-->EAST ]
#
#   Input Format:
#   First line of the input contains N, M separated by space
#   N is the number of students in class
#   M is the number of orders
#   Now M lines follow, each line contains one of the following three types of order
#   C L R K
#   or, A L R K
#   or, Q L R
#
#   Output Format:
#   For every order of type 3, i.e "Q L R" , output the required number in a new line
#
#   Constraints:
#   1 <= N <= 106
#   1 <= M <= 2x104
#   1 <= L = N
#   L <= R <= N
#   1 <= K <= 109
#
#   SAMPLE INPUT
#   10 10
#   C 1 5 3
#   Q 2 6
#   A 3 7 6
#   Q 3 8
#   C 4 8 9
#   Q 5 10
#   A 2 8 1
#   Q 1 10
#   C 6 10 2
#   Q 7 10
#
#   SAMPLE OUTPUT
#   4
#   3
#   2
#   4
#   3
#
#   Explanation
#   Initially [ (1)E, (2)E, (3)E, (4)E, (5)E, (6)E, (7)E, (8)E, (9)E, 10(E) ] C 1 5 3 -->
#   [ (1)N, (2)N, (3)N, (4)N, (5)N, (6)E, (7)E, (8)E, (9)E, 10(E) ] Q 2 6 --> 1
#   facing EAST, 0 facing SOUTH, 0 facing WEST, 4 facing NORTH, so output maximum
#   i.e 4 A 3 7 6 --> [ (1)N, (2)N, (3)S, (4)S, (5)S, (6)W, (7)W, (8)E, (9)E, 10(E) ] Q 3 8 -->
#   1 facing EAST, 3 facing SOUTH, 2 facing WEST, 0 facing NORTH, so output maximum
#   i.e 3 C 4 8 9 --> [ (1)N, (2)N, (3)S, (4)W, (5)W, (6)N, (7)N, (8)S, (9)E, 10(E) ] Q 5 10 --> 2
#   facing EAST, 1 facing SOUTH, 1 facing WEST, 2 facing NORTH, so output maximum i.e 2 A 2 8 1 -->
#   [ (1)N, (2)W, (3)E, (4)S, (5)S, (6)W, (7)W, (8)E, (9)E, 10(E) ] Q 1 10 --> 4 facing EAST,
#   2 facing SOUTH, 3 facing WEST, 1 facing NORTH, so output maximum i.e 4 C 6 10 2-->
#   [ (1)N, (2)W, (3)E, (4)S, (5)S, (6)E, (7)E, (8)W, (9)W, 10(W) ] Q 7 10 --> 1 facing EAST,
#   0 facing SOUTH, 3 facing WEST, 0 facing NORTH, so output maximum i.e 3
#
#######################################################################################################################
