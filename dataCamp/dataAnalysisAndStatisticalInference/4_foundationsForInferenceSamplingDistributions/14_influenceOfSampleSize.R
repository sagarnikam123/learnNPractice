# Influence of sample size

#######################################################################################################################
#	
#	To see the effect that different sample sizes have on the sampling distribution,
#	let's plot the three distributions on top of one another.
#	
#	In R you can plot all three of them on the same graph by specifying that you'd like to divide the plotting 
#	area into three rows and one column of plots. You do this with the following command:
#	
#	par(mfrow = c(3, 1)).
#	For easy comparison, we'd also like to use the same scale for each histogram. As a common scale,
#	we'll use to the limits (min, max) of the first sample distribution: xlimits <- range(sample_means10).
#	
#	Now we can set the xlim argument of the hist() function to the xlimits object to specify 
#	the range of the x-axis of the histograms.
#	
#######################################################################################################################

# Divide the plot in 3 rows:
par(mfrow = c(3, 1))

# Define the limits for the x-axis:
xlimits <- range(sample_means10)

# Draw the histograms:
hist(sample_means10, breaks = 20, xlim = xlimits)
hist(sample_means50, breaks = 20, xlim = xlimits)
hist(sample_means100, breaks = 20, xlim = xlimits)