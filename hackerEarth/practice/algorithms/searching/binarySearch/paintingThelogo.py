# Painting The logo

#######################################################################################################################
#
#   Rahul has set upon the quest for a new logo of his company. He has created the following continuous logo:
#       /\
#      /  \
#     / /\ \
#    / /  \ \
#   / / /\ \ \
#     \ \ \/ / /
#      \ \  / /
#       \ \/ /
#        \  /
#         \/
#
#   However, his sister, Rashi, likes the following discontinuous design more
#      /\
#     /  \
#    / /\ \
#   / /  \ \
#     \ \  / /
#      \ \/ /
#       \  /
#        \/
#
#   The size of a logo is the longest continuous streak of same characters on an arm.
#   So, size of 1st logo is 5 while that of 2nd one is 4.
#   We know that every '/' or '\' character requires exactly 1 unit of paint.
#   Now, Rahul has X units of paint and would like to draw each of the two favorite logos of himself and his sister,
#   Rashi. So, as to consume it optimally, he wants to know the maximal possible sizes of the two logos that can
#   be drawn such that the difference in sizes of both logos is atmost 1.
#   Note that it is necessary to be able to draw both the logos. In case, the paint is not enough, output 0 0 instead.
#
#   Input Format:
#   The first line of input file contains T, the number of test cases to follow.
#   Each test case contains exactly 1 line containing X, the amount of paint Rahul has.
#
#   Output Format:
#   Print two space-separated integers, which denote sizes of Rahul's favourite logo
#   and Rashi's favorite logo, respectively.
#
#   Constraints:
#   1  <=  T  <=  10^5
#   1  <=  N  <=  10^15
#
#   Sample Explanation:
#   Case #1: We have only 10 units of paint which is not enough to draw both logos.
#   Case #2: We have 20 units of paint and following logos can, hence, be drawn.
#   /\
#     \/
#    /\
#   /  \
#       /
#      \/
#
#   This requires exactly 12 units, and we cannot do better
#
#   SAMPLE INPUT
#   3
#   10
#   20
#   30
#
#   SAMPLE OUTPUT
#   0 0
#   1 2
#   3 2
#
#######################################################################################################################
