# Challenge (3)

#######################################################################################################################
#
#	Lastly, we can construct the confidence intervals and plot them. In this exercise,
#	you will have to calculate the 95% confidence intervals.
#
#	If you don't remember, here is the formula for the lower and upper bound respectively:
#
#	x−1.96×σ/(√n)
#
#	x+1.96×σ/(√n)
#
#	You can use this formula to calculate the lower and upper bounds with just two lines.
#
#	As a hint: samp_mean * 2 in R will multiply all 50 of the means with 2.
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
lower <- samp_mean - 1.96 * (samp_sd/sqrt(n))
upper <- samp_mean + 1.96 * (samp_sd/sqrt(n))

# Plotting the confidence intervals:
pop_mean <- mean(population)
plot_ci(lower, upper, pop_mean)
