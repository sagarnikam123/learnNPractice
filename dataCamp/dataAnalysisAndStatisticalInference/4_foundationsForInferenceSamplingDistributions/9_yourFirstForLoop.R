# Your first for loop

#######################################################################################################################
#	
#	To make sure you fully understand what you've just done, let's try running a smaller version.
#	
#	To help you remember the syntax, initialization was done with the rep() function: rep(NA, n).
#	
#	And this is how you do a for loop: for (i in 1:n) { ... }
#	
#######################################################################################################################

# Initialize the vector to store the means in:
sample_means_small <- rep(NA, 100)

# Run your for loop:
for (i in 1:100) {
 size50 <- sample(area, size=50)
 sample_means_small[i] <- mean(size50)
}

# Print the result:
sample_means_small