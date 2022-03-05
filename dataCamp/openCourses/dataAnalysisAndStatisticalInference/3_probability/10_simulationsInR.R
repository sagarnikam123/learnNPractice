# Simulations in R

#######################################################################################################################
#
#	So the key is to compare Kobe's data with that of a shooter who we know to have independent shots.
#	While we don't have any such data, that is very easy to simulate in R.
#
#	In a simulation, you set the ground rules of a random process and then the computer uses random numbers
#	to generate an outcome that adheres to those rules. As a simple example,
#	you can simulate flipping a fair coin with the following commands.
#
#	outcomes <- c("heads", "tails")
#	sample(outcomes, size = 1, replace = TRUE)
#	The vector outcomes can be thought of as a hat with two slips of paper in it: one slip says “heads” and
#	the other says “tails”. The function sample() draws one slip from the hat and tells us if it was a head or a tail.
#
#	Don't worry if you don't completely understand the code right now.
#		We'll explain it throughout the remainder of this lab.
#
#######################################################################################################################

# Try some simulations!
outcomes <- c("heads", "tails")
sample(outcomes, size = 1, replace = TRUE)
sample(outcomes, size = 1, replace = TRUE)
sample(outcomes, size = 1, replace = TRUE)
sample(outcomes, size = 1, replace = TRUE)
sample(outcomes, size = 1, replace = TRUE)
