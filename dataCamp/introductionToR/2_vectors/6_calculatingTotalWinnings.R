# Calculating total winnings

#################################################################################################
#																								#
#	Now that you have the poker and roulette winnings nicely as a named vector, 				#
#	you can start doing some data analytical magic.												#
																								#
#	You want to find out the following type of information:										#
#																								#
#	    How much has been your overall profit or loss per day of the week?						#
#	    Have you lost money over the week in total?												#
#	    Are you winning/losing money on poker or on roulette?									#
#																								#
#	To get the answers, you have to do arithmetic calculations on vectors.						#
#																								#
#	It is important to know is that if you sum two vectors in R, it takes the element-wise sum.	#
#	For example, the following three statements are completely equivalent:						#
#																								#
#	c(1, 2, 3) + c(4, 5, 6)																		#
#	c(1 + 4, 2 + 5, 3 + 6)																		#
#	c(5, 7, 9)																					#
#																								#
#	Let us try this first!																		#
#																								#	
#################################################################################################

A_vector <- c(1, 2, 3)
B_vector <- c(4, 5, 6)

# Take the sum of 'A_vector' and 'B_vector'
total_vector <- A_vector + B_vector
  
# Print 'total_vector' to the console
total_vector
