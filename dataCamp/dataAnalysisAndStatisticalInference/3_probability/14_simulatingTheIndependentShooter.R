# Simulating the Independent Shooter

#######################################################################################################################
#	
#	Simulating a basketball player who has independent shots uses the same mechanism that we used to simulate 
#	a coin flip. To simulate a single shot from an independent shooter with a shooting percentage of 50% we type, 
#	outcomes <- c("H", "M") sim_basket <- sample(outcomes, size = 1, replace = TRUE)
#	
#	To make a valid comparison between Kobe and our simulated independent shooter, 
#	we need to align both their shooting percentages and their numbers of attempted shots.
#	
#######################################################################################################################

# Run the simulation and assign the result to sim_basket.
outcomes <- c("H", "M")
sim_basket <- sample(outcomes, size = 133, replace = TRUE, prob=c(0.45, 0.55))

# Inspect your simulation
table(sim_basket)