# Mishki Playing Games

#######################################################################################################################
#
#   Mishki loves playing games, so she asked her friend Hacker to join her in the Game of Stones. In this game,
#   they have N sets of stones, numbered from 1 to N. Each set consists of Ai stones, where 1 <= i <= N.
#   In each turn, player can select any of the set containing at least 1 stone, and have to reduce it to half of
#   the present number of stones , i.e ⌊Ai/ 2⌋ (Integer Division) from it, and in case of single stone,
#   he/she has to empty the set by removing it.
#   As the game is really interesting, both will play this game on Q days. On each day, they will some select
#   sets of stones numbered from l to r, where 1 <= l <= r <= N and being a lover of the games, everyday Mishki
#   will be the first player to take the turn.
#   The one who won't be able to play his/her turn in the game (i.e no stones left in teh selected set of stones),
#   will loose the game.
#   You need to tell the winner of the game on each day, if both the player will play optimally and take their
#   turn alternatively.
#
#   Note:
#   1) Each day, before starting the game they will have the same number of stones in the set as given initially.
#   2) Use fast i/o for large test files.
#
#   Input:
#   The first line will consists of 2 integers N and Q denoting the number of sets of stones,
#   and number of days respectively.
#   Next line contains N space separated integers Ai, denoting the number of stones in each set.
#   Each line of next Q lines contains 2 space separated inegers, l and r, denoting the range of sets used
#   in the game on ith day.
#
#   Output:
#   Print Q lines, each line containing the winner of the ith day.
#
#   Constraints:
#   1 <= N,Q <= 10^6
#   1 <= Ai  <= 10^6
#   1 <= l <= r <= N
#
#   SAMPLE INPUT
#   3 2
#   4 2 3
#   1 2
#   2 3
#
#   SAMPLE OUTPUT
#   Mishki
#   Hacker
#
#   Explanation
#   Here N = 3, number of sets of stones and Q = 2 (number of days, the game will be played).
#   A1 = 4, A2 = 2 and A3 = 3.
#   1) On First day:
#   Range of sets is from 1 to 2, i.e A1 and A2. First Mishki will take her turn and reduce A1 to A1/2,
#   i.e to 2 stones in set A1.
#   Now A1 = 2 and Hacker will reduce it to A1/2, i.e to 1 stone in set A1.
#   Now Mishki will play and reduce it to 0, by removing remaining single stone from set A1.
#   As A1 is empty now, Hacker will reduce A2 to A2/2, i.e to 1 stone in set A2.
#   At last Mishki will remove the remaining single stone from set A2.
#   As all the sets are empty now, Hacker will not be able to take his turn, so Mishki will win the game.
#
#   Similarly, On second day, Hacker will win the game.
#
#######################################################################################################################
