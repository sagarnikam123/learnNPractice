# Histograms

#######################################################################################################################
#
#	Finally, let's make some histograms. You can look at the histogram for the age of our respondents with the
#	command hist(cdc$age). Histograms are generally a very good way to see the shape of a single distribution,
#	but that shape can change depending on how the data is split between the different bins.
#
#	With the breaks argument, you have more control over the number of bins.
#	For example, the command hist(cdc$weight, breaks=50) will split the data across 50 bins.
#
#######################################################################################################################

# Draw a histogram of bmi
hist(bmi)

# And one with breaks set to 50
hist(bmi, breaks=50)

# And one with breaks set to 100
hist(bmi, breaks=100)
