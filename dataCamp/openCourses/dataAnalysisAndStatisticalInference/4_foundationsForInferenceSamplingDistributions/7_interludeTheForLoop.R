# Interlude: The for loop

#######################################################################################################################
#
#	Let's take a break from the statistics for a moment to let that last block of code sink in.
#	You have just run your first for loop, a cornerstone of computer programming. The idea behind the for loop is
#	iteration: it allows you to execute code as many times as you want without having to type out every iteration.
#
#	In the case above, we wanted to iterate the two lines of code inside the curly braces that take a random sample
#	of size 50 from area then save the mean of that sample into the sample_means50 vector.
#	Without the for loop, this would be painful:
#
#	sample_means50 <- rep(NA, 5000)
#	samp <- sample(area, 50)
#	sample_means50[1] <- mean(samp)
#	samp <- sample(area, 50)
#	sample_means50[2] <- mean(samp)
#	samp <- sample(area, 50)
#	sample_means50[3] <- mean(samp)
#	samp <- sample(area, 50)
#	sample_means50[4] <- mean(samp)
#	and so on...
#
#	With the for loop, these thousands of lines of code are compressed into a handful of lines.
#
#######################################################################################################################

# Set up an empty vector of 5000 NAs to store sample means:
sample_means50 <- rep(NA, 5000)

# Take 5000 samples of size 50 of area and store all of them in sample_means50.
# Also print i (the index counter):
for (i in 1:5000) {
  samp <- sample(area, 50)
  sample_means50[i] <- mean(samp)
  print(i)
}
