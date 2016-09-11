# BallDrill

#######################################################################################################################
#
#	Evidently enough, Ash is a beginner at being a pokemon trainer. The next challenge that Ash is facing now is to 
#	collect some pokeballs for his quest to be the ultimate pokemon master.
#	
#	He comes across a square grid of boxes, each containing some pokeballs. But as he was about to start collecting 
#	the pokeballs, a hostile Beedrill starting following him. Being a rookie pokemon trainer, he could not think of 
#	any way but to try and outrun him. He does this while collecting the pokeballs in the process.
#	
#	But before he started collecting the pokeballs, he noticed something, much to his horror. In some of the boxes,
#	he saw that there was a swarm of Beedrills. Ash decides to take the logical approach and 
#	decides not to go to these boxes.
#	
#	As Ash is a pokemon trainer(a beginner at that too) and not a strategist. He asks you to help him find out 
#	the path on which he will be able to collect maximum pokeballs while escaping the wrath of the Beedrills.
#	
#	Formally, Ash is standing in the top-left corner of the grid and he has to escape through the bottom-right 
#	corner. As the Beedrill is following him, he can only move in the bottom and right direction. 
#	Obviously he cannot turn back. There are some blocked boxes where he cannot go because of the swarm of 
#	Beedrills present there. You have to tell him the maximum number of pokeballs he can collect in the process.
#	
#	Input :
#	
#	First line contains t , the number of test cases.
#	
#	The next line contains n , no of boxes per side of the square shaped grid.
#	
#	The next n lines contain the configuration of the grid, i.e. the amount of pokeballs each box contains.
#	
#	The next line contains m , no. of Beedrill swarms in the grid.
#	
#	The next m lines contain p and q , the coordinates of Beedrill swarms in the grid.( w.r.t. top left corner, 
#	in increasing values to the right and bottom).
#	
#	Output :
#	
#	For each test case, print one number, which is the maximum number of pokeballs Ash can collect.
#	
#	If he can not escape the grid, print “Sad lyf”.
#	
#	Constraints:
#	
#	1 <= t <= 10
#	
#	2 <= n <= 500
#	
#	0 <= m <= 50
#	
#######################################################################################################################