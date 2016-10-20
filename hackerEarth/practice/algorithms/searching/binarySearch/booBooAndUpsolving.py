# BooBoo and Upsolving

#######################################################################################################################
#
#   The hero of this story is a toddler named BooBoo. Inspired by the legendary competitive coder Gena, BooBoo has
#   also started preparing to race to the top of the ranks.
#
#   BooBoo is going to practice N different problems in the exact given order over the next M days.
#   For each problem, he writes down the amount of time qi he will take to think and code the ith
#   problem (He is quite good at estimating!). Before starting on the problems, he took advice from experienced
#   competitive programmers on his practice routine and almost all of them advised him to keep his daily load
#   at the minimum possible and avoid over training.
#
#   Since BooBoo already has N problems to solve, he asks you to find the minimum time T such that training everyday
#   for a time ti <= T is sufficient to solve all the N problems in M days.
#   Note : Unlike in real world, you cannot think on a problem on one day and solve it on the other day. You need
#   to do it on the very same day!
#
#   Input Format:
#   The first line contains two space separated integers N and M. The next line contains N space separated integers
#   denoting the time qi required to solve the ith problem.
#
#   Output Format:
#   The output consists of one integer, the minimum time T as described in the problem statement.
#
#   Constraints:
#   1 <= N <= 10^5
#   1 <= M <= N
#   1 <= qi <= 10^12
#
#   Subtasks
#   20 points: 1 <= N <= 1000,1 <= M <= 100,1 <= qi <= 100.
#   80 points: Original Constraints
#
#   SAMPLE INPUT
#   5 3
#   1 2 2 1 3
#
#   SAMPLE OUTPUT
#   3
#
#   Explanation
#   By setting T = 3, we can solve 1st two questions on day 1, next two on day 2 and 5th one on day 3.
#
#######################################################################################################################
