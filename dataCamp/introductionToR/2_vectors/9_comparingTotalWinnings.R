# Comparing total winnings

#########################################################################################################
#
#	Oops, it seems like you are losing money. Time to rethink and adapt your strategy!
#	This will require some deeper analysis…
#
#	After a short brainstorm in your hotel's jacuzzi, you realize that a possible explanation might be
#	that your skills in roulette are not as well developed as your skills in poker.
#	So maybe your total gains in poker are higher (or > ) than in roulette.
#
#########################################################################################################

# Poker winnings from Monday to Friday
poker_vector <- c(140, -50, 20, -120, 240)

# Roulette winnings from Monday to Friday
roulette_vector <- c(-24, -50, 100, -350, 10)

# Give names to both 'poker_vector' and 'roulette_vector'
days_vector <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
names(roulette_vector) <- days_vector
names(poker_vector) <- days_vector

# Calculate total gains for poker and roulette
total_poker <- sum(poker_vector)
total_roulette <- sum(roulette_vector)

# Check if you realized higher total gains in poker than in roulette
answer <- total_poker > total_roulette
