# Selection by comparison - Step 1

#####################################################################################################################
#																													#
#	By making use of comparison operators, we can approach the previous question in a more pro-active way.			#
#																													#
#	The (logical) comparison operators known to R are:																#
#																													#
#	    < for less than																								#
#	    > for greater than																							#
#	    >= for greater than or equal to																				#
#	    == for equal to each other																					#
#	    != not equal to each other																					#
#																													#
#	As seen in the previous chapter, stating 6 > 5 returns TRUE. The nice thing about R is that you can use 		#
#	these comparison operators also on vectors. For example, the statement c(4,5,6) > 5 returns: FALSE FALSE TRUE.	#
#	In other words, you test for every element of the vector if the condition stated by the comparison operator is	#
#	TRUE or FALSE. Do not take our word for it! Try it in the console ;-).											#
#																													#
#	Behind the scenes, R recycles the value 5 when you execute c(4,5,6) > 5. R wants to do an element-wise 			#
#	comparison of each element in c(4,5,6) with each corresponding element in 5. 									#
#	However, 5 is not a vector of length three. To solve this, R automatically replicates the value 5 				#
#	to generate a vector of three elements, c(5, 5, 5) and then carries out the element-wise comparison.			#
#																													#
#####################################################################################################################

# Poker winnings from Monday to Friday
poker_vector <- c(140, -50, 20, -120, 240)

# Roulette winnings from Monday to Friday
roulette_vector <- c(-24, -50, 100, -350, 10)

# Give names to both 'poker_vector' and 'roulette_vector'
days_vector <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
names(roulette_vector) <- days_vector
names(poker_vector) <- days_vector

# What days of the week did you make money on poker?
selection_vector <- poker_vector > 0
