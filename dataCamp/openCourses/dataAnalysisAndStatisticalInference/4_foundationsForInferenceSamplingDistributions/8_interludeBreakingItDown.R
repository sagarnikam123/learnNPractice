# Interlude: Breaking it down

#######################################################################################################################
#
#	We will now consider the code in the editor line by line to figure out what it does. Next we'll have a small
#	exercise to make sure you understood it.
#
#	In the first line we initialize a vector. In this case, we created a vector of 5000 NAs called sample means50.
#	This vector will store values generated within the for loop. NA means not available, and in this case they're
#	used as placeholders until we fill in the values with actual sample means. NA is also often used
#	for missing data in R.
#
#	The second line calls the for loop itself. The syntax can be loosely read as, "for every element i from 1 to 5000,
#	run the following lines of code". You can think of i as the counter that keeps track of which loop you're on.
#	Therefore, more precisely, the loop will run once when i=1, then once when i=2, and so on up to i=5000.
#
#	The body of the for loop is the part inside the curly braces, and this set of code is run for each value of i.
#	Here, on every loop, we take a random sample of size 50 from area, take its mean, and store it as
#	the ith element of sample_means50. In order to display that this is really happening, we asked R to print i at
#	each iteration. This line of code is optional and is only used for displaying what's going on while the
#	for loop is running.
#
#	The for loop allows us to not just run the code 5000 times, but to neatly package the results,
#	element by element, into the empty vector that we initialized at the outset.
#
#######################################################################################################################

# The vector sample_means50 is initialized with NA values
sample_means50 <- rep(NA, 5000)

# The for loop runs 5000 times, with i taking values 1 up to 5000
for (i in 1:5000) {
  # Take a random sample of size 50
  samp <- sample(area, 50)
  # Store the mean of the sample in the sample_means50 vector on the ith place
  sample_means50[i] <- mean(samp)
  # Print the counter i
  print(i)
}

# Print the first few random means
head(sample_means50)
