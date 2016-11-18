# Shil and Survival Game

#######################################################################################################################
#
#   The Mad King arrested Shil's comrades for participating in a rebellion against the King. Instead of punishing
#   them with death, the King decided to play the Game of survival with them. The game is played as follows:
#       All the N people are forced to stand in a line.
#       Now the king randomly chooses any two persons standing next to each other in line
#       and kills the one having lower strength.
#       King keeps on performing step 2 until there are only 2 survivors.
#       The Last two survivors are forgiven for their crimes and are free to go.
#
#   As Shil is worried for his comrades, he wants to find out the ones who could survive - at least, one out of
#   all the possible games.
#   Given N integers denoting the strengths of comrades, you must print the position of comrades
#   who could survive at least one Game.
#
#   Input format:
#   The first Line of input consists of an integer N denoting the total number of comrades.
#   The next line consists of N integers S1, S2 , ..... SN denoting the strength of comrades standing in a line.
#   Si denotes the strength of ith comrade standing in a line. The strengths of all the comrades will be distinct.
#
#   Output format:
#   Print the positions of comrades standing in line who could be one of the two possible survivors
#   in any possible game. You must print the positions in an increasingly sorted manner.
#
#   Constraints:
#   3 <= N <= 10^5
#   1 <= Si <= 10^9
#
#   SAMPLE INPUT
#   5
#   2 6 8 1 3
#
#   SAMPLE OUTPUT
#   1 2 3 5
#
#   Explanation
#   Some of the possible games are :
#       [2 6] 8 1 3 -> [6 8] 1 3 -> 8 [1 3] -> 8 3
#       2 [6 8] 1 3 -> 2 8 [1 3] -> 2 [8 3] -> 2 8
#       [2 6] 8 1 3 -> 6 8 [1 3] -> 6 [8 3] -> 6 8
#   Here [ ] represents adjacent positions being selected in step 2 of The Game at any moment of time.
#
#######################################################################################################################
