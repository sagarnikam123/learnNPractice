# Challenge (1)

#######################################################################################################################
#
#	To learn a bit more about how sample means and confidence intervals vary from one sample to another: a challenge!
#
#	Using R, we're going to recreate many samples using a for loop. Here is the rough outline:
#
#	Obtain a random sample.
#	Calculate the sample's mean and standard deviation.
#	Use these statistics to calculate a confidence interval.
#	Repeat steps (1)-(3) 50 times.
#	But let's start slowly by initializing the objects you'll use to store the means and standard deviations.
#	We'll also store the desired sample size as n.
#
######################################################################################################################

# Initialize samp_mean, samp_sd and n:
samp_mean <- rep(NA, times=50)
samp_sd <- rep(NA, times=50)
n <- 60
