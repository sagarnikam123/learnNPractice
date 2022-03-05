# Challenge (2)

#######################################################################################################################
#
#	Okay, remember the outline:
#
#	Obtain a random sample.
#	Calculate the sample's mean and standard deviation.
#	Use these statistics to calculate a confidence interval.
#	Repeat steps (1)-(3) 50 times.
#	Now that we've initialized our objects, we can use a for loop to calculate 50 times the mean and standard
#	deviation of random samples.
#
#	In this exercise we're taking away the training wheels, so it will be a bit harder than the previous ones.
#	But hey, that's why it's called a challenge!
#
######################################################################################################################

# Initialize samp_mean, samp_sd and n:
samp_mean <- rep(NA, 50)
samp_sd <- rep(NA, 50)
n <- 60

# For loop goes here:
for (i in 1:50) {
  samp <- sample(population, size = n)
  samp_mean[i] <- mean(samp)
  samp_sd[i] <- sd(samp)
}
