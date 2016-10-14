# City and Campers 2

#######################################################################################################################
#
#   The campers turn against Alex after joining together!
#   Alex has split into N parts, and each of these N parts is wandering around the city aimlessly. You have to
#   handle Q queries; which consist of two groups of Alex's finding each other and becoming one larger group.
#   After each query, output the minimum difference between two groups. If there is only one group, output 0.
#   At first, everyone is in their own group. What this means is that there are N groups,
#   each of which contain 1 part of Alex.
#   Also note, if the two Alex's in the query are already in the same group, print the current answer,
#   and skip merging the groups together.
#
#   Input:
#   The first line consists of two space separated integers, N and Q
#   The next Q line consists of two integers, A and B,
#   meaning that the groups involving Alex A and Alex B find each other.
#
#   Output:
#   Output Q lines, the answer after each query.
#
#   Constraints:
#   1 <= N <= 10^5
#   1 <= Q <= 10^5
#
#   SAMPLE INPUT
#   2 1
#   1 2
#
#   SAMPLE OUTPUT
#   0
#
#   Explanation
#   The two groups merge to become one larger group, so the difference will be 0.
#
#######################################################################################################################
