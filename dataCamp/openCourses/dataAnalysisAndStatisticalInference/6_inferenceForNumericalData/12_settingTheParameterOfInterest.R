# Setting the parameter of interest

#######################################################################################################################
#
#	To create an interval for the median instead of the mean, you can change the est argument of
#	the inference() function.
#
######################################################################################################################

# Adapt the inference() function:
inference(nc$gained, type = "ci", method = "simulation", conflevel = 0.95, est = "median", boot_method = "se")
