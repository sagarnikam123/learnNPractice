# Selection by comparison - Step 2

#################################################################################################################
#
#	Working with comparisons will make your data analytical life easier. Instead of selecting a subset of days
#	to investigate yourself (like before), you can simply ask R to return only those days where
#	you realized a positive return for poker.
#
#	In the previous exercises you used selection_vector <- poker_vector > 0 to find the days on which
#	you had a positive poker return. Now, you would like to know not only the days on which you won,
#	but also how much you won on those days.
#
#	You can select the desired elements, by putting selection_vector between the square brackets that
#	follow poker_vector. This works, because R only selects those elements
#	where selection_vector is TRUE by default. For selection_vector this means where poker_vector > 0.
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

# What days of the week did you make money on poker?
selection_vector <- poker_vector > 0

# Select from poker_vector these days
poker_winning_days <- poker_vector[selection_vector]
