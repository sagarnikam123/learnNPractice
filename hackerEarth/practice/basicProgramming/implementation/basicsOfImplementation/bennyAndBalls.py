# Benny and Balls

#######################################################################################################################
#
#   In this problem Benny is looking for your help as usual.
#   There are N baskets, which are numbered from 0 to N - 1.
#   In each moment of time exactly, starting with t = 1,
#   one ball appears in xi-th basket, where xi = (a * x(i-1) + b) % N.
#   The bottom of the i-th basket opens when there is not less than the p[i] balls in it,
#   all the balls fall out of the basket, and then the bottom of the basket is closed again.
#   How many times baskets' bottoms will open to the T-th moment of time?
#
#   Input
#   The first line containts Q - the amount of test cases.
#   Each test case consist of three lines:
#   First line contains N
#   Second line contains N numbers p[i]
#   Third line contains x1 , a, b, t
#   xi = (a * xi-1 + b) % N;
#
#   Output
#   Q lines - answers for each case
#
#   Constraints
#       1 <= N <= 10^5
#       1 <= Q <= 10
#       1 <= p[i] <= 10^5
#       1 <= A, B <= 10^9
#       0 <= X < N
#       0 <= t < 10^6
#
#   SAMPLE INPUT
#   3
#   5
#   3 1 3 2 3
#   4 4 3 5
#   2
#   3 7
#   0 5 3 12
#   7
#   4 4 4 1 10 10 1
#   2 4 3 6
#
#   SAMPLE OUTPUT
#   1
#   2
#   0
#
#   Explanation
#   Let's consider the first case in every moment of time.
#   T = 0: [0 0 0 0 0] - all baskets are empty.
#   T = 1: [0 0 0 0 1] - one ball was added to the last basket.
#   T = 2: [0 0 0 0 2] - one ball was added to the last basket.
#   T = 3: [0 0 0 0 3] - one ball was added to the last basket.
#       As p[4] is equal to the number of balls in the 4-th basket,
#       the bottom will open, so the state will be [0 0 0 0 0].
#   T = 4: [0 0 0 0 1] - one ball was added to the last basket.
#   T = 5: [0 0 0 0 2] - one ball was added to the last basket.
#
#######################################################################################################################
