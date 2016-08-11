# One last box plot

#######################################################################################################################
#	
#	You can also calculate new variables that don't directly show up in your data frame. Say for example you want
#	to create a box plot of the sum of weight and height versus gender. This is of course nonsense, 
#	but it can be done like this:
#	
#	w_height <- cdc$weight + cdc$height
#	boxplot(w_height ~ cdc$gender)
#	Notice that the first line above is just some arithmetic, but it's applied to all 20,000 observations in cdc.
#	That is, for each of the 20,000 participants, we take their weight and add it to their height. 
#	The result is 20,000 sums, one for each respondent. This is one reason why we like R:
#	it lets us perform computations like this using very simple expressions.
#	
#	Now let's try a more meaningful calculation.
#	
#######################################################################################################################

# Calculate the BMI:
bmi <- (cdc$weight/ cdc$height**2) * 703

# Draw the box plot:
boxplot(bmi ~ cdc$genhlth)