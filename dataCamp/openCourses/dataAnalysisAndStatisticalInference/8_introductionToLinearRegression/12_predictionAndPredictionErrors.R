# Prediction and prediction errors

#######################################################################################################################
#
#	The function abline() plots a line based on its slope and intercept. This line can be used to predict y at any
#	value of x.
#
#	When predictions are made for values of x that are beyond the range of the observed data, it is referred to
#	as extrapolation and is not usually recommended. However, predictions made within the range of the data are more
#	reliable. They're also used to compute the residuals.
#
#	Tip: abline() takes the slope and intercept as arguments. Here, we use a shortcut by providing the model itself,
#	which contains both parameter estimates: abline(m1)
#
#	Note: Due to technical limitations, the dynamic appending of graphs such as adding lines is not possible in the
#	console, only in the editor.
#
#######################################################################################################################

# Create a scatterplot:
plot(mlb11$runs, mlb11$at_bats)

# The linear model:
m1 <- lm(runs ~ at_bats, data = mlb11)

# Plot the least squares line:
abline(m1)
