# Mojo, Jojo and Game

#######################################################################################################################
#
#   After solving some programming problems, Mojo and Jojo want to take some time off and play some game.
#   They ask Rhezo what to play. Rhezo tells them about a game with the following rules:
#   There are N stacks of coins, each containing X coins. Both players take turns, with Mojo moving first.
#   The only allowed moves are the following:
#       - Remove any stack of coin.
#       - Remove any 2 stacks.
#       - Remove X/2 coins from each stack if X is even, or remove (X+1)/2 coins from each pile, if X is odd.
#   The game finishes when there are no more coins left in any stack. The last person to make the move wins.
#   Both, Mojo and Jojo play optimally and want to win. Can you tell who will win this game?
#
#   Input:
#   First line of the input contains an integer T, denoting the number of test cases you have to handle.
#   Each test case consists of two integers, N and X, separated by a single space.
#
#   Output:
#   For each test case, if Mojo wins, print "Mojo", else print "Jojo" (quotes only for clarity).
#
#   Constraints:
#   1 <= T <= 10^3
#   1 <= N <= 10^3
#   1 <= X <= 10^9
#
#   SAMPLE INPUT
#   1
#   4 5
#
#   SAMPLE OUTPUT
#   Jojo
#
#   Explanation
#   One possible flow of the game is as follows:∙
#   There are 4 stacks with 5 coins each, Mojo removes 2 stacks.∙
#   There are 2 stacks left now with 5 coins each, Jojo removes 2 stacks, and wins.
#   We can show that for any possible flow of the game, Jojo will always win.
#
#######################################################################################################################
