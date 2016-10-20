# C - GukiZ Height

#######################################################################################################################
#
#   GukiZ loves hiking in the mountains. He starts his hike at the height 0 and he has some goal to reach,
#   initially equal to H. Once he is at the height not less than his goal, he ends his hike.
#   The mountains are described by a 0-indexed sequence A of the length N. In the first day GukiZ will change his
#   height by A0, in the second day by A1, and so on. Mountains are a regular structure so the pattern repeats after
#   the first N days. In general, in the i-th day GukiZ will change his height by A(i-1)%N.
#   Additionally, GukiZ will become more and more tired and in the i-th day his goal will decrease by i. So,
#   after the first i days his goal will be equal to H - i(i+1)/2.
#   Note that A may contain negative elements (because GukiZ can go down from some hill). Moreover, his height
#   could become negative, or even his goal!
#   You can assume that both GukiZ's height and goal change at the same moment (immediately and simultaneously)
#   in the middle of a day.
#   Could you calculate the number of days in the GukiZ's hike?
#
#   Input format
#   The first line contains two integers N and H, denoting the length of an array A, and the initial goal.
#   The second line contains N integers A0, A1, ..., AN-1.
#
#   Output format
#   In a single line print the number of days in the GukiZ's hike.
#   It can be proved that for any input the answer exists.
#
#   Constraints
#   1  <=  N  <=  10^5
#   1  <=  H  <=  10^9
#   -109  <=  Ai  <=  10^9
#
#   SAMPLE INPUT
#   3 45
#   7 -4 5
#
#   SAMPLE OUTPUT
#   7
#
#   Explanation
#   We can describe the GukiZ's hike as follows:
#   1 - 7, 44 (after the first day his height and goal will be equal to 7 and 44, respectively)
#   2 - 3, 42
#   3 - 8, 39
#   4 - 15, 35
#   5 - 11, 30
#   6 - 16, 24
#   7 - 23, 17
#   After the 7-th day Gukiz's height is not less than his goal so he ends his hike.
#
#######################################################################################################################
