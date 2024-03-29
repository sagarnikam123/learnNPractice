# Vector selection: the good times (3)

#################################################################################################################
#
#	Selecting multiple elements of poker_vector with c(2,3,4) is not very convenient. Many statisticians are
#	lazy people by nature, so they created an easier way to do this: c(2,3,4) can be abbreviated to2:4,
#	which generates a vector with all natural numbers from 2 up to 4.
#
#	So, another way to find the mid-week results is poker_vector[2:4].
#	Notice how the vector 2:4 is placed between the square brackets to select element 2 up to 4.
#
#################################################################################################################

# Poker winnings from Monday to Friday
poker_vector <- c(140, -50, 20, -120, 240)

# Roulette winnings from Monday to Friday
roulette_vector <- c(-24, -50, 100, -350, 10)

# Give names to both 'poker_vector' and 'roulette_vector'
days_vector <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
names(roulette_vector) <- days_vector
names(poker_vector) <- days_vector

# Define a new variable based on a selection
roulette_selection_vector <- roulette_vector[2:5]
