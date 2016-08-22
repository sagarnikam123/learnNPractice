# The margin of error

#######################################################################################################################
#	
#	Imagine you've set out to survey 1000 people on two questions: are you female? and are you left-handed? Since 
#	both of these sample proportions were calculated from the same sample size, they should have the same margin of 
#	error, right? Wrong! While the margin of error does change with sample size, it is also affected by the proportion.
#	
#	Think back to the formula for the standard error:
#	
#	SE=√ p(1−p)/n.
#	
#	This is then used in the formula for the margin of error for a 95% confidence interval:
#	
#	ME= 1.96×SE=1.96× √p(1−p)/n
#	
#	Since the population proportion pp is in this MEME formula, it should make sense that the margin of error is 
#	in some way dependent on the population proportion.
#	
#	We can visualize this relationship by creating a plot of MEME vs. pp.
#	
#######################################################################################################################

# The first step is to make a vector p that is a sequence from 0 to 1 with each number separated by 0.01:
n <- 1000
p <- seq(0, 1, 0.01)
     
# We then create a vector of the margin of error (me) associated with each of these values of p using the familiar approximate formula (ME = 2 X SE):
me <- 2 * sqrt(p * (1 - p)/n)
     
# Finally, plot the two vectors against each other to reveal their relationship:
plot(me ~ p)