# City and Campers

#######################################################################################################################
#
#   "Money money MONEY, I want money" thought Alex. "Now how do I get money? Well... I'll open up a camp!"
#   Well, unfortunately things didn't go so well for Alex's campers, and now there are N campers wandering around
#   the city aimlessly. You have to handle Q queries; which consist of two groups finding each other and becoming
#   one larger group. After each query, output the difference between the group of largest size and group of
#   smallest size. If there is only one group, output 0. At first, everyone is in their own group.
#   Also note, if the two campers in the query are already in the same group, print the current answer,
#   and skip merging the groups together.
#
#   Input:
#   The first line consists of two space separated integers, N and Q
#   The next Q line consists of two integers, A and B,
#   meaning that the groups involving camper A and camper B find each other.
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
#   Here, the two campers find each other, so the answer is 0.
#
#######################################################################################################################
