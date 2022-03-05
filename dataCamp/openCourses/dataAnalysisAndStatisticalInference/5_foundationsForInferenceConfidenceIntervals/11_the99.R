# The 99%

#######################################################################################################################
#
#	Calculate 50 confidence intervals at the 99% confidence level. You do not need to obtain new samples, simply
#	calculate new intervals based on the sample means and standard deviations you have already collected.
#	Using the plot_ci() function, plot all intervals and calculate the proportion of intervals that include the true
#	population mean.
#
#	If you don't remember, here is the formula for the lower and upper bound for a 99% confidence level respectively:
#
#	x−2.58×σ/(√n)
#
#	x+2.58×σ/(√n)
#
######################################################################################################################

# Initialize samp_mean, samp_sd and n:
samp_mean <- rep(NA, 50)
samp_sd <- rep(NA, 50)
n <- 60

# For loop goes here:
for (i in 1:50) {
  samp <- sample(population, n)
  samp_mean[i] <- mean(samp)
  samp_sd[i] <- sd(samp)
}

# Calculate the interval bounds here:
lower <-  samp_mean - 2.58 * samp_sd/sqrt(n)
upper <- samp_mean + 2.58 * samp_sd/sqrt(n)

# Plotting the confidence intervals:
pop_mean <- mean(population)
plot_ci(lower, upper, pop_mean)
