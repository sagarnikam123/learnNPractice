# Choosing a bootstrap method

#######################################################################################################################
#
#	We can also use the standard error method by changing the boot_method argument.
#
######################################################################################################################

# Adapt the inference() function:
inference(nc$gained, type = "ci", method = "simulation", conflevel = 0.95, est = "mean", boot_method = "se")
