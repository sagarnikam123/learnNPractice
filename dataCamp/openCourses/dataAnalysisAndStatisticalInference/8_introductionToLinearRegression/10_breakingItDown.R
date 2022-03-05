# Breaking it down

#######################################################################################################################
#
#	In this exercise, you should first make the assignment described in the instructions below. After that, read the
#	rest of this description.
#
#	First, the formula used to describe the model is shown at the top. After the formula you find the five-number
#	summary of the residuals. The “Coefficients” table shown next is key; its first column displays the linear
#	model’s y-intercept and the coefficient of homeruns. With this table, we can write down the least squares
#	regression line for the linear model:
#
#	y^=415.2389+1.8345 homeruns
#	y^=415.2389+1.8345 homeruns
#	One last piece of information we will discuss from the summary output is the Multiple R-squared, or more simply,
#	R2R2. The R2R2 value represents the proportion of variability in the response variable that is explained by the
#	explanatory variable. For this model, 62.7% of the variability in runs is explained by homeruns.
#
#######################################################################################################################

# Use the lm() function to make the linear model and print a summary
m2 <- lm(runs ~ homeruns, data = mlb11)

summary(m2)
