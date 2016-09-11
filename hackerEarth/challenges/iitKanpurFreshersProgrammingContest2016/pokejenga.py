# Pokejenga

#######################################################################################################################
#	
#	Two wild Alakazam got tired of waiting in the bushes for a trainer to pass through. To occupy their minds they 
#	invented a game similar to Jenga, a 2D variant. As soon as a game was set up (psychically of course), one of 
#	them got delighted that he won.
#	
#	Your job is to figure out how Alakazam could tell who won simply by looking at the setup.
#	
#	A game of 2D Jenga is set up as a tower N levels high, with Ki equally sized square blocks making up the ith 
#	level. Each turn involves removing any number of blocks from any one level. If all the blocks from a level are
#	removed, the tower falls and the player that removed all remaining blocks from that level loses.
#	
#	Input:
#	
#	The first line contains an integer T, the number of test cases.
#	
#	The following 2*T lines contain an integer N, denoting the height of the tower, followed by N space separated 
#	integers in the next line, the ith of which denotes Ki, the number of blocks on the ith level.
#	
#	Output:
#	
#	For each test case, output “1” if the first player wins, or “2” if the second player wins. 
#	(Quotes added for clarity)
#	
#	Constraints:
#	
#	1 <= T <= 10^3
#	1 <= N <= 10^4
#	1 <= Ki <= 10^9
#	
#######################################################################################################################
#	Input
#	
#	3
#	4
#	5 5 5 5
#	5
#	3 3 3 3 3
#	2
#	1 1
#######################################################################################################################
#	Output
#	
#	2
#	1
#	2
#######################################################################################################################