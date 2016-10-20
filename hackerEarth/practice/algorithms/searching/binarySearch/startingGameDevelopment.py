# Starting Game development

#######################################################################################################################
#
#   Every one is now a days playing games on their smartphones for passing free time. Because of which there are
#   number of game developing companies growing in the market. Not only that, each company is now flooding the
#   market with a lot of games. With such a huge number of games in the market, for each company, with millions of
#   users, keeping track of all the data and maintaining good user experience is now a big problem for them.
#   One of the very important aspect of building these games is the ability to maintain all the information about
#   the user. This is a very important step in maintaining the user experience. No user would want to restart from
#   the beginning of the game every time he/she restarts it. They would just then switch to a competitive game
#   developer and that is not good for business.
#   Most of the games now have a similar structure and some of the game companies follows the logic below in their
#   games to handle this problem:
#
#       -The game has N different parameters on which a user's strength in the game is calculated. The game has a
#       total of M different levels of play.
#       And hence each parameter also gets these M levels of granularity, i.e. for each parameter itself a user
#       can be on any one of those M levels.
#       -For each parameter, the following is done:
#           -User's strength on the parameter is calculated.
#           -Each of the M levels have some strength value associated with them such that the strength value grows
#           when you move from a lower level to the higher level. It may happen that any two consecutive levels have
#           same required strength.
#           -If a user's strength is more than or equal to the strength value associated with a level, he/she is
#           said to be fit to be on that level of the game for this parameter.
#           The level for this parameter is the maximum level for which a user satisfies the above criteria.
#       -The level of the game a user is on, is decided from its level in
#           all of the N parameters of the game as follows:
#           -For each parameter, the level user is on for that parameter is computed as described above.
#           -The level of game at which a user is the minimum of all the levels in each of the N parameters.
#
#   You are now interested in building a game for the smartphone user's as well. But before that, you would need
#   to solve this problem effeciently. Given the strength of user's for each parameter, print the level they are on.
#
#   Input:
#   The first line of the input contains three space separated integers, N, M and Q. (N is the number of parameters,
#   M is the number of levels, and Q is the number of queries that you have to answer.)
#   Next N line contains M space separated integers, the ith line contains the M strength values for the
#   M levels of the ith level.
#   Next Q lines, each contains N space separated integers, the strength of a user in each of the N parameters.
#
#   Output:
#   Print Q lines, one for each query. For each query, print the level on which that user is.
#
#   Constraints:
#   1  <=  N  <=  100
#   1  <=  M  <=  5000
#   1  <=  Q  <=  5000
#   Every input will fit in an integer.
#
#   SAMPLE INPUT
#   2 3 3
#   10 20 30
#   7 14 100
#   11 7
#   35 13
#   100 1002
#
#   SAMPLE OUTPUT
#   1
#   1
#   3
#
#######################################################################################################################
