# Even more on sampling

#######################################################################################################################
#	
#	Note that we're able to use a single for loop to build two distributions by adding additional lines 
#	inside the curly braces.
#	
#	Don't worry about the fact that samp is used for the name of two different objects. In the second command of 
#	the for loop, the mean of samp is saved to the relevant place in the vector sample_means10.
#	
#	With the mean saved, we're now free to overwrite the object samp with a new sample, this time of size 50
#	
#	In general, anytime you create an object using a name that is already in use, the old object will get replaced
#	with the new one, i.e. R will write over the existing object with the new one, which is something you want 
#	to be careful about if you don't intend to do so.
#	
#######################################################################################################################

# The ames data frame and area and price objects are already loaded into the workspace
set.seed(12345)

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