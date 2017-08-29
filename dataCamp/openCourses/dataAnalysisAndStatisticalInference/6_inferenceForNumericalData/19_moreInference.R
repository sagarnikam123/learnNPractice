# More inference

#######################################################################################################################
#	
#	Next, we’ll use the inference() function for evaluating whether there is a difference between the average birth 
#	weights of babies born to smoker and non-smoker mothers.
#	
#	Let’s pause for a moment to go through the arguments of this custom function:
#	
#	- The first argument is y, which is the response variable that we are interested in: nc$weight.
#	- The second argument is the grouping variable, x, which is the explanatory variable – the grouping variable 
#		across the levels of which we’re comparing the average value for the response variable, 
#		smokers and non-smokers: nc$habit.
#	- The third argument, est, is the parameter we’re interested in:
#		"mean" (other options are "median", or "proportion".)
#	- Next we decide on the type of inference we want: a hypothesis test ("ht") or a confidence interval("ci").
#	- When performing a hypothesis test, we also need to supply the null value, which in this case is 0, 
#		since the null hypothesis sets the two population means equal to each other.
#	- The alternative hypothesis can be "less", "greater", or "twosided".
#	- Lastly, the method of inference can be "theoretical" or "simulation" based.
#	
######################################################################################################################

# The code:
inference(y = nc$weight, x = nc$habit, est = "mean", type = "ht", null = 0, alternative = "twosided", method = "theoretical")