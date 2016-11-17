# Chess Tournament

#######################################################################################################################
#
#   2^N participants (P1 , P2 , P3 .... , P2N ) have enrolled for a knockout chess tournament. In the first round,
#   each participant P2k-1 is to play against participant P2k, (1 ≤ k ≤ 2^(N-1)) . Here is an example for k = 4 :
#
#   (image)
#
#   Some information about all the participants is known in the form of a triangular matrix A with dimensions
#   (2^N-1) X (2^N-1). If Aij = 1 (i > j), participant Pi is a better player than participant Pj, otherwise Aij = 0
#   and participant Pj is a better player than participant Pi. Given that the better player always wins, who will be
#   the winner of the tournament?
#
#   Note : Being a better player is not transitive i.e if Pi is a better player than Pj and Pj is a better player
#   than Pk, it is not necessary that Pi is a better player than Pk .
#
#   Input
#   The first line consists of N. Then, 2^N-1 lines follow, the ith line consisting of i space separated integers
#   Ai+1 1 , Ai+1 2 , .... Ai+1 i
#
#   Output
#   A single integer denoting the id of the winner of the tournament.
#
#   Constraints
#   1 ≤ N ≤ 10
#   Aij = {0, 1} (i > j)
#
#   SAMPLE INPUT
#   2
#   0
#   1 0
#   0 1 1
#
#   SAMPLE OUTPUT
#   1
#
#   Explanation
#   When 1 plays against 2, 1 wins. When 3 plays against 4, 4 wins. When 1 plays against 4, 1 wins.
#   So, 1 wins the tournament.
#
#######################################################################################################################
