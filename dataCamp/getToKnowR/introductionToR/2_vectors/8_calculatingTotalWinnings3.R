# Calculating total winnings (3)

#####################################################################################################################
#																													#
#	Based on the previous analysis, it looks like you had a mix of good and bad days. 								#
#	This is not what your ego expected, and you wonder if there may be a (very very very) 							#	
#	tiny chance you have lost money over the week in total?															#
#																													#
#	A function that helps you to answer this question is sum(). It calculates the sum of all elements of a vector.	#
#	For example, to calculate the total amount of money you have lost/won with poker you do:						#
#																													#
#	total_poker <- sum(poker_vector)																				#
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

# Total winnings with poker
total_poker <- sum(poker_vector)

# Up to you now:
total_roulette <- sum(roulette_vector)
total_week <- total_poker + total_roulette
