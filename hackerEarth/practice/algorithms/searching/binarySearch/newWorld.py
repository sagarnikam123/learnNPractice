# New World

#######################################################################################################################
#
#   The time has arrived when the world is going to end. But don't worry, because the new world yuga will start soon.
#   Manu (carrier of mankind) has been assigned the job to carry all the necessary elements of current
#   yuga to the upcoming yuga.
#   There are N stones arranged in a straight line. In order to fulfill the task, Manu has to travel from the
#   first stone to the last one in a very specific way. First of all, he has to do it using exactly K jumps.
#   In a single jump, he can jump from a stone with coordinate xi to a stone with coordinate xj if and only
#   if xi < xj. We denote the value xj - xi as the length of such a jump.
#   Your task is to help Manu minimize the maximum length of a jump he makes in his journey, in order
#   to reach the last stone in exactly K jumps and save the mankind. This is the answer you have to provide.
#
#   Input:
#   In the first line, there is a single integer T denoting the number of test cases to handle. Then, description
#   of T tests follow. In the first line of each such description, two integers N and K are given. This is followed
#   by N space separated integers in the second line, each one denoting a single stone location.
#
#   Output:
#   Output exactly T lines, and in the ith of them, print a single integer denoting the answer to the ith test case.
#
#   Constraints:
#   1 <= T <= 10
#   2 <= N <= 10^5
#   1 <= K <= (N-1)
#   1 <= Coordinates of stones <= 10^9
#
#   Note:
#       It is not necessary that Manu steps on each stone.
#       Location of all stones are given in ascending order.
#
#   SAMPLE INPUT
#   2
#   4 1
#   2 15 36 43
#   3 2
#   27 30 35
#
#   SAMPLE OUTPUT
#   41
#   5
#
#   Explanation
#   Case #1: Since we have to make exactly 1 jump, we need to jump directly from the first stone to the last one,
#   so the result equals 43 - 2 = 41.
#   Case#2: Since we have to make exactly 2 jumps, we need to jump to all of the stones. The minimal longest jump
#   to do this is 5, because 35 - 30 = 5.
#
#######################################################################################################################
