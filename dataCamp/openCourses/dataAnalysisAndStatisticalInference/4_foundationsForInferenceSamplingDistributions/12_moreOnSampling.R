# More on sampling

#######################################################################################################################
#
#	Mechanics aside, let's return to the reason we used a for loop: to compute a sampling distribution, specifically,
#	this one: hist(sample_means50). (Try it in the console!)
#
#	The sampling distribution that we computed tells us much about estimating the average living area in homes
#	in Ames. Because the sample mean is an unbiased estimator, the sampling distribution is centered at the true
#	average living area of the the population, and the spread of the distribution indicates
#	how much variability is induced by sampling only 50 home sales.
#
#	Let's see what the effect is of the sample size on our distribution. Take a look at the code.
#	In total we create three sampling stributions, sample_means10, sample_means50
#	(that we had coded before) and sample_means100.
#
#######################################################################################################################

# Initialize the sample distributions:
sample_means10 <- rep(NA, 5000)
sample_means50 <- rep(NA, 5000)
sample_means100 <- rep(NA, 5000)

# Run the for loop:
for (i in 1:5000) {
	samp <- sample(area, 10)
	sample_means10[i] <- mean(samp)
	samp <- sample(area, 50)
	sample_means50[i] <- mean(samp)
	samp <- sample(area, 100)
	sample_means100[i] <- mean(samp)
}

# Take a look at the results:
head(sample_means10)
head(sample_means50)
head(sample_means100)
