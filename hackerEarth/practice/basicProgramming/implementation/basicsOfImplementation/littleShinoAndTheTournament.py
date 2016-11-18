# Little Shino and the tournament

#######################################################################################################################
#
#   Little Shino is interested in the fighting tournaments. Once she went to watch one of the tournaments.
#   There were N fighters and ith fighter will be represented by i. Each fighter has some distinct strength.
#   Rules of the tournament are:
#       Each fight will have 2 fighters.
#       In a fight, fighter with more strength will win.
#       In one round, 1st fighter will fight against 2nd fighter, 3rd fighter will fight against 4th fighter and so on.
#       If there is odd number of fighters, last one will qualify to the next round without fighting.
#
#   Input:
#   First line contains 2 integers, N and Q, number of fighters and number of queries.
#   Second line contains N space separated integers. kth integer represents the strength of kth fighter.
#   Next Q line contain one integer i each, denoting Q queries.
#
#   Output:
#   For each query, print the number of fights ith fighter will take part in.
#
#   Constraints:
#   1 <= N <= 10^5
#   1 <= Q <= 10^6
#   1 <= i <= N
#   1 <= strengthoffighters <= 10^9
#
#   SAMPLE INPUT
#   5 5
#   1 2 3 4 5
#   1
#   2
#   3
#   4
#   5
#
#   SAMPLE OUTPUT
#   1
#   2
#   1
#   3
#   1
#
#   Explanation
#   The fights in first round will be between (1, 2) and (3, 4).
#   From fight between (1, 2), 2 will win and from fight between (3, 4), 4 will win.
#   Second round will have 3 fighters left. {2, 4, 5}.
#   In second round there will be one fight between (2, 4) and 4 will win the fight.
#   Third round will have 2 fighters left. {4, 5}
#   There will one fight in the third round between (4, 5) and 5 will win in the fight.
#   Number of fight 1 took part in: 1
#   Number of fight 2 took part in: 2
#   Number of fight 3 took part in: 1
#   Number of fight 4 took part in: 3
#   Number of fight 5 took part in: 1
#
#######################################################################################################################
