# Flipping an unfair coin

#######################################################################################################################
#	
#	Until now you've been running simulations where each outcome had an equal probability. 
#	However, the sample() function also allows you to set the probabilities.
#	
#	You can set these probabilities by adding an argument called prob to the sample() function. 
#	This argument needs a vector of probability weights, one for each possible outcome. An example of such a
#	vector for three possible outcomes is c(0.1, 0.6, 0.3).
#	
#	Note that for the fair coin the probability weight vector is c(0.5, 0.5). The default of the sample() 
#	function (when no prob is given) is for all outcomes to have equal probability.
#	
#######################################################################################################################

# Run the simulation:
outcomes <- c("heads", "tails")
sim_unfair_coin <- sample(outcomes, size=100, replace = TRUE, prob= c(0.2, 0.8))

# Print the object:
sim_unfair_coin

# Compute the counts of heads and tails:
table(sim_unfair_coin)