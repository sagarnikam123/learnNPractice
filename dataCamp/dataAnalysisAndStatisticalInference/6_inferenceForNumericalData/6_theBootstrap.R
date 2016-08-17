# The bootstrap

#######################################################################################################################
#	
#	Using this sample we would like to construct a bootstrap confidence interval for the average weight gained by 
#	all mothers during pregnancy. A quick reminder of how bootstrapping works:
#	
#	Take a bootstrap sample (a random sample with replacement of size equal to the original sample size) 
#	from the original sample.
#	Record the mean of this bootstrap sample.
#	Repeat steps (1) and (2) many times to build a bootstrap distribution.
#	Calculate the XX% interval using the percentile or the standard error method.
#	Let's first take 100 bootstrap samples (i.e. with replacement), and record their means in a new object 
#	called boot_means. You'll also make a histogram of the bootstrap distribution.
#	
######################################################################################################################

# Initialize the boot_means object:
boot_means <- rep(NA, times=100)

# Insert your for loop:
for (i in 1:100) {
  boot_sample <- sample(gained_clean, n, replace = TRUE)
  boot_means[i] <- mean(boot_sample)
}

# Make a histogram of boot_means:
hist(boot_means, plot=TRUE)
