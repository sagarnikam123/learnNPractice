# Connecting the dots

#######################################################################################################################
#
#	By default, R creates a scatterplot with each x,y pair indicated by an open circle.
#	Now, if we want to connect the data points with a line, we could add a third argument:
#	type = "l" (with l being short for line).
#
#######################################################################################################################

# The present dataset is already loaded

# Adapt the code to create a line plot
plot(x = present$year, y = present$girls, type="l")
