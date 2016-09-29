# New Year Chaos

#######################################################################################################################
#
#   It's New Year's Day and everyone's in line for the Wonderland rollercoaster ride!
#   There are n people queued up, and each person wears a sticker indicating their initial position in the queue
#       (i.e.1,2,....n-1,n : with the first number denoting the frontmost position).
#   Any person in the queue can bribe the person directly in front of them to swap positions. If two people swap
#       positions, they still wear the same sticker denoting their original place in line.
#       One person can bribe at most two other persons.
#   That is to say, if n=8 and Person 5 bribes Person 4, the queue will look like this: 1,2,3,4,5,6,7,8.
#   Fascinated by this chaotic queue, you decide you must know the minimum number of bribes that took place to get
#       the queue into its current state!
#   Note: Each Person X wears sticker X, meaning they were initially the Xth person in queue.
#
#   Input Format
#   The first line contains an integer T, denoting the number of test cases.
#   Each test case is comprised of two lines; the first line has n(an integer indicating the number of people in
#       the queue), and the second line has n space-separated integers describing the final state of the queue.
#
#   Constraints
#   1 <= T <= 10
#   1 <= n <= 10^5
#
#   Subtasks
#   For 60% score 1 <= n <= 10^3
#   For 100% score 1 <= n <= 10^5
#
#   Output Format
#   Print an integer denoting the minimum number of bribes needed to get the queue into its final state; print Too
#       chaotic if the state is invalid (requires Person X to bribe more than 2 people).
#
#   Sample Input
#   2
#   5
#   2 1 5 3 4
#   5
#   2 5 1 3 4
#
#   Sample Output
#   3
#   Too chaotic
#
#   Explanation
#   Sample 1
#
#   The initial state:
#   [pic1(1).png]
#   After person 4 moves one position ahead by bribing person 4:
#   [pic2.png]
#   Now person 5 moves another position ahead by bribing person 3:
#   [pic3.png]
#   And person 2 moves one position ahead by bribing person 1:
#   [pic5.png]
#
#   So the final state is 2,1,5,3,4 after three bribing operations.
#
#   Sample 2
#   No person can afford to bribe more than two people, so its not possible to achieve the input state.
#
#######################################################################################################################

#!/bin/python3

import sys

T = int(input().strip())
for a0 in range(T):
    n = int(input().strip())
    q = [int(q_temp) for q_temp in input().strip().split(' ')]
    # your code goes here
