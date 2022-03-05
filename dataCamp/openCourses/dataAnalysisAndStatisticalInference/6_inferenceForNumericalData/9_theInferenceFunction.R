# The inference function

#######################################################################################################################
#
#	Next we’ll introduce a new function that you’ll be seeing a lot more of in the upcoming labs – a custom function
#	that allows you to apply any statistical inference method that you’ll be learning in this course.
#	Since this is a custom function, we need to load it first.
#
#	Writing a for loop every time you want to calculate a bootstrap interval or run a randomization test is
#	cumbersome. This function automates the process. By default the inference() function takes 10,000 bootstrap
#	samples (instead of the 100 you’ve taken above), creates a bootstrap distribution, and calculates the confidence
#	interval, using the percentile method.
#
#	The inference() function is a bit on the heavy side, it may take a while to run.
#
######################################################################################################################

# Load the inference() function:
load(url("http://assets.datacamp.com/course/dasi/inference.Rdata"))

# Run the inference() function:
inference(nc$gained, type = "ci", method = "simulation", conflevel = 0.9, est = "mean", boot_method = "perc")
