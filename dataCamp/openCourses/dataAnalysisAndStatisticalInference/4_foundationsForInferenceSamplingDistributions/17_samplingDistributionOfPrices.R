# Sampling distribution of prices

#######################################################################################################################
#
#	And now the real challenge: running a loop.
#
#	Since you have access to the population, we can simulate the sampling distribution for x¯¯¯x¯ by taking
#	5000 samples of size 50 from the population and compute 5000 sample means.
#
#######################################################################################################################

# Initialize sample_means50
sample_means50 <- rep(NA, 5000)

# Code the for loop
for (i in 1:5000) {
  sample_means50[i] <- mean(sample(price, size=50))
}

# Print out the head of sample_means50
head(sample_means50)
