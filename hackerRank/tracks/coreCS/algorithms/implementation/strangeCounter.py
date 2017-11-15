# Strange Counter

#######################################################################################################################
#
#   Bob has a strange counter. At the first second t=1, it displays the number 3. At each subsequent second,
#   the number displayed by the counter decrements by 1.
#   The counter counts down in cycles. In the second after the counter counts down to 1, the number becomes 2x the
#   initial number for that countdown cycle and then continues counting down from the new initial number in a new
#   cycle. The diagram below shows the counter values for each time t in the first three cycles:
#   [strange(1).png]
#   Given a time, t, find and print the value displayed by the counter at time t.
#
#   Input Format
#   A single integer denoting the value of t.
#
#   Constraints
#   1 <= t <= 10^12
#
#   Subtask
#   1 <= t <= 10^5 for 60% of the maximum score.
#
#   Output Format
#   Print the value displayed by the strange counter at the given time t.
#
#   Sample Input
#   4
#
#   Sample Output
#   6
#
#   Explanation
#   Time t = 4 marks the beginning of the second cycle in which the counter displays a number that is double the
#   initial number displayed at the beginning of the previous cycle (i.e. 2 *3 = 6). This is also shown in the
#   diagram in the Problem Statement above.
#
#######################################################################################################################

#!/bin/python3

import sys

t = int(input().strip())
