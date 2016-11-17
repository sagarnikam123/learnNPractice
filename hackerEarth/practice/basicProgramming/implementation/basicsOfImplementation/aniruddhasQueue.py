# Aniruddha's Queue

#######################################################################################################################
#
#   Aniruddha is given a milestone M to reach in terms of distance. He is living in a different Galaxy where there
#   are N days in a year.At the ith day he can walk atmost X distance.Assuming he walks optimally you need to
#   output the minimum day number on which he will reach the milestone.
#
#   Input
#   The first input line contains the T number of testcases. Each testcase consist of three lines First line
#   consist of single integer N — the number of days in a year.
#   Next line contains N non-negative space-separated numbers— i.e. distance which Aniruddha will walk on ith day.
#   It is guaranteed that at least one of those numbers is greater than zero.
#   And the third line consist of the value of milestone which Aniruddha has to reach.
#
#   Output
#   For each testcase you need to output the answer to the following query.
#
#   Constraints
#   1 <= T <= 10
#   1 <= N <= 10^5
#   0 <= X <= 10^8
#   0 <= M <= 10^16
#
#   SAMPLE INPUT
#   2
#   5
#   1 5 0 0 2
#   9
#   3
#   1 0 3
#   2
#
#   SAMPLE OUTPUT
#   1
#   3
#
#   Explanation
#   For the first testcase we have to reach a milestone of 9 units. On the 1st day we would cover at most 1 unit.
#   On the 2nd day we would cover at most 5 units.So total distance covered till 2nd day is 6 units.On 3rd and
#   4th day he would not cover any distance as value of X on those days is 0. On the 5th day he would cover
#   at most 2 units. So total distance covered till 5th day is 8 units.Then he will go to the first day of the next
#   year.So total distance covered till 1st day will now become 9 units which is equal to the milestone.
#   So answer is 1. Similarly answer for second testcase is 3.
#
#######################################################################################################################
