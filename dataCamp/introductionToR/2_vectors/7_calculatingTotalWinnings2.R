# Calculating total winnings (2)

#########################################################################################################
#																										
#	Do you understand how R does arithmetic calculations with vectors?									
#																										
#	Then it is time to get those Ferraris in your garage! First, you need to understand					
#	what the overall profit or loss per day of the week was. The total daily profit is the sum of the	
#	profit/loss you	realized on poker per day, and the profit/loss you realized on roulette per day.	
#																										
#	In R, this is just the sum of roulette_vector and poker_vector.										
#																										
#########################################################################################################

# Poker winnings from Monday to Friday:
poker_vector <- c(140, -50, 20, -120, 240)

# Roulette winnings from Monday to Friday:
roulette_vector <- c(-24, -50, 100, -350, 10)

# Give names to both 'poker_vector' and 'roulette_vector'
days_vector <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
names(poker_vector) <- days_vector
names(roulette_vector) <- days_vector

# Up to you now:
total_daily <- poker_vector + roulette_vector
