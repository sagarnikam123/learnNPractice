# Monica's Birthday Party

#######################################################################################################################
#
#   Its Monica's 30th birthday today. She has invited n of her F.R.I.E.N.D.S. to her birthday party. She has indexed
#   them from 1 to n. Unfortunately, some of her friends don't quite get along. The amount of disliking between
#   friend i and friend j equals dij ( Note that dij=dji, and dij may be 0 if the friends don't dislike each other.
#   Also, dii=0).
#   There are two dining tables of capacities c1 and c2 respectively. Capacity of a table here means the maximum
#   number of people that can be seated on the table. The cost of a table with k people is defined as the sum of
#   dij over all the k(k−1)/2 unordered pairs of friends (i,j) seated on it.
#   You have to help her divide her friends in two groups to be seated on the two tables, such that the sum of the
#   cost of the two tables is minimized.
#
#   Input:
#   The first line of input contains n, the number of friends invited to the party.
#   The second line contains two integers, separated by a space, c1 and c2.
#   It is followed by n lines. The ith line contains n integers separated by a space di1,di2,⋯,din
#
#   Output:
#   Print the number of people seated on table 1 in the first line.
#   In the second line, print the indices of the friends to be seated on table 1,
#   separated by a space in increasing order.
#
#   Constraints:
#   2 <= n <= 10^3
#   0 <= dij <= 10^4
#   dij=dji,dii=0
#   0 <= c1,c2 <= 10^3
#   c1+c2 >= n
#
#   Scoring:
#   The scoring is relative. The solution with minimum sum of costs of two tables gets 100 points and other solutions
#   get points relative to it.
#   If the output format is wrong, or some table has more people than its capacity, you get WA.
#
#   Test file generation
#   In 20% of the test cases, n
#   is chosen randomly between [2,1000]
#   In 20% of the test cases, n is chosen randomly between [400,1000]
#   In 20% of the test cases, n is chosen randomly between [700,1000]
#   In 20% of the test cases, n is chosen randomly between [900,1000]
#   In 20% of the test cases, n is chosen to be 1000
#   dij is chosen randomly in range [0,104] , c1 is chosen randomly in range [0,n],
#   and c2 is chosen randomly in range [n−c1,n]
#   50% of the test files will be run during the contest, and the rest will be run after the contest is over.
#   The final score will be calculated by only the later half(to be run after the contest is over).
#
#   SAMPLE INPUT
#   3
#   2 2
#   0 2 1
#   2 0 3
#   1 3 0
#
#   SAMPLE OUTPUT
#   2
#   1 3
#
#   Explanation
#   Cost of table 1 is d13=1. Cost of table 2 is 0, because there is no pair. So, the total cost is 1.
#   Also, table 1 has 2 <= c1 people, and table 2 has 1 <= c2 people. So, the solution is valid.
#
#######################################################################################################################
