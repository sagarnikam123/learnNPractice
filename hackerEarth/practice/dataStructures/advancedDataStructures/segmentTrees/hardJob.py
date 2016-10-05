# Hard job

#######################################################################################################################
#
#   You are given a permutation of integers from 1 to N (very unusual :D). The only thing you should do is to
#   process M queries. Each query has 2 parameters: number X from 1 to N and lowercase latin letter Y
#   (either 'l' or 'r'). You do the following:
#       Calculate distances from the position of the number X to the left end and to the right end of the
#       permutation. Let's call minimum of them accessibleness.
#       Erase number X from it's current position. If parameter Y is 'l' then insert X the very beginning of the
#       permutation. Otherwise insert X after the last element of the permutation.
#   Please find sum of accessibleness over all queries.
#
#   Input
#   The first line contains two space-separated integers: N and M. The second line contains N space-separated
#   integers: the initial permutation. After this M lines follow containing 2 space-separated parameters each in
#   the way it's described in the statement above.
#
#   Output
#   Output one number - answer for the question.
#
#   Constraints
#       0 < N, M ≤ 500 000
#       0 < N, M ≤ 2 000 in 35 % of the test data.
#       0 < N, M ≤ 70 000 in 70 % of the test data.
#
#   SAMPLE INPUT
#   4 3
#   3 1 4 2
#   3 r
#   2 r
#   1 l
#
#   SAMPLE OUTPUT
#   1
#
#   Explanation
#   Permutation before the 1st query: 3 1 4 2. 3 has accessibleness 0.
#   Permutation before the 2nd query: 1 4 2 3. 2 has accessibleness 1.
#   Permutation before the 3rd query: 1 4 3 2. 1 has accessibleness 0.
#   So the sum over all queries is 1.
#
#######################################################################################################################
