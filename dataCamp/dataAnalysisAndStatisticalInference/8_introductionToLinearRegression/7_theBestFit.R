# The best fit

#######################################################################################################################
#	
#	Removing the coordinates for estimating and adding leastSquares = TRUE to the function gives us 
#	the best fitting line.
#	
#######################################################################################################################

# Adapt the function to plot the best fitting line:
plot_ss(x = mlb11$at_bats, y = mlb11$runs, leastSquares = TRUE, showSquares = TRUE)