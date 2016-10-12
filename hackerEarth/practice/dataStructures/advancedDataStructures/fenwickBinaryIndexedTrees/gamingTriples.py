# Gaming Triples

#######################################################################################################################
#
#   All the Games are not Mathematical at all but Mathematical games are generally favourite of all. Ananya offered
#   such a Mathematical game to Sarika. Ananya starts dictating the rules of the game to Sarika. Sarika finds
#   the game interesting and wishes to play it. Ananya said that they have an array of N elements.
#   Each second either Ananya or Sarika can make a move. First one to make a move can select any 3 elements from
#   the given array which satisfies the following condition.
#   Let us consider 3 selected elements are A[x1], A[x2], A[x3] so they must follow the given two condition.
#       x1 < x2 < x3
#       y1 < y2 > y3.
#   where y1=A[x1] , y2=A[x2] , y3=A[x3].
#   The 3 selected numbers are written down on a piece of paper. One triplet can only be chosen once.
#   Refer to the image for better understanding. (diagram)
#
#   The second player to make a move can also choose any 3 elements A[x1], A[x2], A[x3] such that chosen set of
#   elements fulfill the following two conditions.
#       x1 < x2 < x3
#       y1 > y2 < y3.
#   where y1=A[x1] , y2=A[x2] , y3=A[x3].
#   (diagram)
#
#   Ananya and Sarika move alternatively and play optimally. Determine the winner of the game and also report
#   the number of seconds for which the game lasts.
#   NOTE:
#       One triplet can be chosen once.
#       Two triplets are considered to be different if there exists at least one x which belongs to the first
#   triplet but not to the second triplet.( where x is one of the indices of the chosen triplet )
#
#   [INPUT]:
#   First line of input contains a single integer T denoting the number of test cases. First line of each test
#   case contains a single integer N denoting the number of elements in the array. Next line contains
#   N space separated integers denoting elements of the array. Next line of test case contains a single
#   integer 0 if Ananya starts the game and 1 if Sarika starts the game.
#
#   [OUTPUT]:
#   Output consists of 2*T lines. 2 lines corresponding to each test case. First line contains name of the
#   winner of the game and second line contains number of seconds for which the game lasts.
#
#   [CONSTRAINTS]:
#   1 <= T <= 10000
#   1 <= N <= 10^5
#   -10^9 <= A[i] <= 10^9
#   sum of N over all test cases will not exceed 4*10^6
#
#   SAMPLE INPUT
#   2
#   3
#   1 2 3
#   1
#   3
#   3 2 3
#   0
#
#   SAMPLE OUTPUT
#   Ananya
#   0
#   Sarika
#   0
#
#   Explanation
#   For the first test case , there is no triplets so Sarika cannot make a move, and hence Ananya will win
#       the game. No moves, No second. so answer
#   Ananya 0
#   For the second test case , there is one triplets but it is of type 2 so Ananya cannot make a move,
#       and hence Sarika will win the game. No moves, No second. so answer
#   Sarika 0
#
#######################################################################################################################
