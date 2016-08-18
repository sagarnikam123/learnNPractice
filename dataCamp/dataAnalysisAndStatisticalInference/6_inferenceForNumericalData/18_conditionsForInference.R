# Conditions for inference

#######################################################################################################################
#	
#	Before you can start hypothesis testing, you need to think about the conditions that are necessary for inference.
#	
#	To do this, you'll need to obtain sample sizes to check the conditions. You can compute the group size using the 
#	same by command above by replacing mean with length.
#	
######################################################################################################################

# Use the by function here:
by(nc$weight, nc$habit, length)
