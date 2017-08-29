# Setting the confidence level

#######################################################################################################################
#	
#	We can easily change the confidence level to 95% by changing the argument conflevel of the inference() function.
#	
######################################################################################################################

# Adapt the inference() function:
inference(nc$gained, type = "ci", method = "simulation", conflevel = 0.95, est = "mean", boot_method = "perc")