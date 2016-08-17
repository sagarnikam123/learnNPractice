# Father's age

#######################################################################################################################
#	
#	In this exercise, you'll use the inference() function to create a 95% bootstrap confidence interval for the mean 
#	age of fathers at the birth of their child using the standard error method.
#	
#	If you don't remember the arguments of the inference() function, take a look at the hint!
#	
######################################################################################################################

# Adapt the inference() function to create a 95% bootstrap interval for the mean age of fathers:
inference(nc$gained, type = "ci", method = "simulation", conflevel = 0.95, est = "mean", boot_method = "se")
inference(nc$fage, type="ci", method="simulation", conflevel=0.95, est="mean", boot_method="se")
