# Vector selection: the good times

#############################################################################################################
#
#	Your hunch seemed to be right. It appears that the poker game is more your cup of tea than roulette.
#
#	Another possible route for investigation is your performance at the beginning of the working week
#	compared to the end of it. You did have a couple of Margarita cocktails at the end of the week…
#
#	To answer that question, you only want to focus on a selection of the total_vector. In other words,
#	our goal is to select specific elements of the vector. To select elements of a vector
#	(and later matrices, data frames, …), you can use square brackets. Between the square brackets,
#	you indicate what elements to select. For example, to select the first element of the vector,
#	you type poker_vector[1]. To select the second element of the vector, you type poker_vector[2], etc.
#
#############################################################################################################

# Poker winnings from Monday to Friday
poker_vector <- c(140, -50, 20, -120, 240)

# Roulette winnings from Monday to Friday
roulette_vector <- c(-24, -50, 100, -350, 10)

# Give names to both 'poker_vector' and 'roulette_vector'
days_vector <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
names(roulette_vector) <- days_vector
names(poker_vector) <- days_vector

# Define a new variable based on a selection
poker_wednesday <- poker_vector[3]
