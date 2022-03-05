# Estimating the best fit

#######################################################################################################################
#
#	Just as we used the mean and standard deviation to summarize a single variable, we can summarize the relationship
#	between these two variables by finding the line that best follows their association.
#
#	Use the following function to select the line that you think does the best job of going
#	through the cloud of points.
#
#	plot_ss(x = mlb11$at_bats, y = mlb11$runs,
#	        x1, y1, x2, y2)
#	This function will first draw a scatterplot of the first two arguments x and y. Then it draws two points
#	(x1, y1) and (x2, y2) that are shown as red circles. These points are used to draw the line that represents
#	the regression estimate. The line you specified is shown in black and the residuals in blue. Note that there are
#	30 residuals, one for each of the 30 observations. Recall that the residuals are the difference between the
#	observed values and the values predicted by the line:
#
#	ei=yi−yi^
#	ei=yi−yi^
#	The most common way to do linear regression is to select the line that minimizes the sum of squared residuals.
#	To visualize the squared residuals, you can rerun the plot_ss() command and add the argument showSquares = TRUE.
#
#	plot_ss(x = mlb11$at_bats, y = mlb11$runs,
#	        x1, y1, x2, y2, showSquares = TRUE)
#	Note that the output from the plot_ss() function provides you with the slope and intercept of your line
#	as well as the sum of squares.
#
#######################################################################################################################

# The mlb11 data frame is already loaded into the workspace

# This is a random estimate:
x1 <- 5400
y1 <- 750
x2 <- 5700
y2 <- 650

# Use the plot_ss() function to draw an estimated regression line. Two points are given to get you started:
plot_ss(x = mlb11$at_bats, y = mlb11$runs, x1, y1, x2, y2, showSquares = TRUE)
