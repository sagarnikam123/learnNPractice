# Kobe's track record

#######################################################################################################################
#	
#	In the kobe data frame, every row records a shot taken by Kobe Bryant. If he hit the shot (made a basket),
#	a hit, H, is recorded in the column named basket, otherwise a miss, M, is recorded.
#	
#	Just looking at the string of hits and misses, it can be difficult to gauge whether or not it seems like Kobe 
#	was shooting with a hot hand. One way we can approach this is by considering the belief that hot hand shooters
#	tend to go on shooting streaks. For this lab, we define the length of a shooting streak to be
#	the number of consecutive baskets made until a miss occurs.
#	
#	For example, in Game 1 Kobe had the following sequence of hits and misses 
#	from his nine shot attempts in the first quarter:
#	H M | M | H H M | M | M | M.
#	
#######################################################################################################################

# Print the variable names of the data frame.
names(kobe)

# Print the first 9 values of the basket variable
kobe[1:9, "basket"]