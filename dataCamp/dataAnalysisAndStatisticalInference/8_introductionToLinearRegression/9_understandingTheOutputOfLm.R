# Understanding the output of lm

#######################################################################################################################
#	
#	The output of lm is an object that contains all of the information you need about the linear model that was just
#	fit. You can access this information using the summary() function.
#	
#######################################################################################################################

# Use the lm() function to make the linear model:
m1 <- lm(runs ~ at_bats, data = mlb11)

# The summary of m1:
summary(m1)