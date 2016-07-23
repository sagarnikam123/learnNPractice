# Vector selection: the good times (4)

#####################################################################################################
#																									#
#	Another way to tackle the previous exercise is by using the names of the vector elements 		#
#	(Monday, Tuesday, …) instead of their numeric positions. For example,							#
#																									#
#	poker_vector["Monday"]																			#
#																									#
#	will select the first element of poker_vector since "Monday" is the name of that first element.	#
#																									#
#	Just like you did in the previous exercise with numerics, 										#
#	you can also use the element names to select multiple elements, for example:					#
#																									#
#	poker_vector[c("Monday","Tuesday")]																#
#																									#
#####################################################################################################

# Poker winnings from Monday to Friday
poker_vector <- c(140, -50, 20, -120, 240)

# Roulette winnings from Monday to Friday
roulette_vector <- c(-24, -50, 100, -350, 10)

# Give names to both 'poker_vector' and 'roulette_vector'
days_vector <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
names(roulette_vector) <- days_vector
names(poker_vector) <- days_vector

average_midweek_gain <- mean(poker_vector[c("Monday","Tuesday","Wednesday")])
