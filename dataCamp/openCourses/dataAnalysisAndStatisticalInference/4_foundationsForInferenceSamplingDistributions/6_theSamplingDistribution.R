# The sampling distribution

#######################################################################################################################
#
#	Not surprisingly, every time we take another random sample, we get a different sample mean. It's useful to get a
#	sense of just how much variability we should expect when estimating the population mean this way.
#
#	The distribution of sample means, called the sampling distribution, can help us understand this variability.
#	In this lab, because we have access to the population, we can build up the sampling distribution for the sample
#	mean by repeating the above steps many times. Here we will generate 5000 samples and
#	compute the sample mean of each.
#
#	The code in the editor takes 5000 samples of size 50 from the population, calculates the mean of each sample,
#	and stores each result in a vector called sample_means50, using what we call a for loop.
#
#	If this is completely new to you, do not fear, in the next exercises we'll review
#	in detail how these lines of code work.
#
#######################################################################################################################

# Set up an empty vector of 5000 NAs to store sample means:
sample_means50 <- rep(NA, 5000)

# Take 5000 samples of size 50 of area and store all of them in sample_means50.
for (i in 1:5000) {
  samp <- sample(area, 50)
  sample_means50[i] <- mean(samp)
}

# View the result. If you want, you can increase the bin width to show more detail by changing the breaks argument.
hist(sample_means50, breaks = 13)
