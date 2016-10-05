# Game of Bots

#######################################################################################################################
#
#   There are two kind of bots in the game BOT A and BOT B. Both are designed so as to move only in one direction
#   in a 1-D array. Bot A can move towards left whereas bot B is constrained to move rightwards. Both are constrained
#   to move only to the empty elements and one cannot jump over another bot. Now, a particular state of array can be
#   represented with a string of A,B and # where A/B represents that BOT of kind A/B is sitting there
#   and # represents an empty space. For example: AA###B, represents an arena of length 5, where A sits at first
#   two places, then three empty places and bot of kind B at last place. Here, B can be atmost 3 positions
#   leftwards and that too when both A do not move.
#
#   Input:
#   First line of input contains an integer which is the number of test cases, then, t
#   lines follow where each line contains two strings initial and final. where both strings consists of A,B
#   and # representing a particular state. NOTE: initial and final string will be of same length
#
#   Output:
#
#   For each test case print "Yes" if it is possible to move from initial state to final state else "No".
#
#   constraints:
#   1≤t≤1000
#   1≤lengthofstring≤106
#   Total number of characters doesn′t exceed 10^7
#
#   UPDATE
#   The test cases for this problem have been updated and the solutions will be rejudged.
#   You are recommended to re-submit your solutions.
#
#   SAMPLE INPUT
#   2
#   #A#B#B# A###B#B
#   #A#B# #B#A#
#
#   SAMPLE OUTPUT
#   Yes
#   No
#
#   Explanation
#   First case:
#   A bot can move one unit leftwards and both bot B can move one unit right wards to get the desired state.
#   Second case: Since, no bots cannot jump over each other. final state is impossible to reach.
#
#######################################################################################################################
