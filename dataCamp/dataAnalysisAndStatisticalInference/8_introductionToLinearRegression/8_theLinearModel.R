# The linear model

#######################################################################################################################
#	
#	It is rather cumbersome to try to get the correct least squares line, i.e. the line that minimizes the sum of 
#	squared residuals, through trial and error. Instead we can use the lm() function in R to fit the linear model 
#	(a.k.a. regression line).
#	
#	model <- lm(formula, data = your_dataframe)
#	The first argument in the function lm() is a formula that takes the form y ~ x. Here it can be read that
#	you want to make a linear model of y as a function of x. The second argument specifies that R should look in 
#	the my_dataframe data frame to find the x and y variables.
#	
#######################################################################################################################

# Use the lm() function to make the linear model:
m1 <- lm(runs ~ at_bats, data = mlb11)

# Print the model:
m1