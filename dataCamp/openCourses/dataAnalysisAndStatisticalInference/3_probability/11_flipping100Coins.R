# Flipping 100 coins

#######################################################################################################################
#
#	If you wanted to simulate flipping a fair coin 100 times, you could either run the function 100 times or,
#	more simply, adjust the size argument, which governs how many samples to draw. Since there are only two elements
#	in outcomes, the probability that we “flip” a coin and it lands heads is 0.5.
#
#	Suppose again that you have a hat with two slips of paper in it: one slip says “heads” and the other
#	says “tails”. Therefore at each draw, the probability of drawing a chip that says “head” is 50%, and
#	“tail” is 50%. The replace = TRUE argument indicates we put the chip back in the hat before drawing again,
#	therefore always keeping the 50/50 odds.
#
#######################################################################################################################

# Run the simulation:
outcomes <- c("heads", "tails")
sim_fair_coin <- sample(outcomes, size = 100, replace=TRUE)

# Print the object:
sim_fair_coin

# Compute the counts of heads and tails:
table(sim_fair_coin)
