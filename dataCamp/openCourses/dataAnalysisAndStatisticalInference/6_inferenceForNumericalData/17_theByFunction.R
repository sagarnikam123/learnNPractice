# The by function

#######################################################################################################################
#	
#	The box plots show how the medians of the two distributions compare, but we can also compare the means of 
#	the distributions using the by() function to split the weight variable into the habit groups, and then take the 
#	mean of each using the mean() function.
#	
#	You can use the by() function as follows to compare the means of the groups: by(numerical_dataset,
#	categorical_dataset, mean).
#	
#	You can also use other functions like median, summary, etc.
#	
######################################################################################################################

# Use the by function here:
by(nc$weight, nc$habit, mean)