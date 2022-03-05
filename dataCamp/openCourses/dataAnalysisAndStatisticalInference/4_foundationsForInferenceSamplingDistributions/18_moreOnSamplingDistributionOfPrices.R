# More on sampling distribution of prices

#######################################################################################################################
#
#	Do the same thing, but now create a vector called sample_means150 to store means of samples of size 150.
#
#	Describe the shape of this sampling distribution, and compare it to the sampling distribution for a sample
#	size of 50. Based on this sampling distribution, what would you guess to be the mean sale price of homes in Ames?
#
#######################################################################################################################

# sample_means50 is already loaded.

# Initialize sample_means150
sample_means150 <- rep(NA, 5000)

# Finish the for loop
for (i in 1:5000) {
  sample_means150[i] <- mean(sample(price, 150))
}

# Draw histograms of sample_means50 and sample_means150
par(mfrow=c(2,1))

# Histograms
hist(sample_means50)
hist(sample_means150)
