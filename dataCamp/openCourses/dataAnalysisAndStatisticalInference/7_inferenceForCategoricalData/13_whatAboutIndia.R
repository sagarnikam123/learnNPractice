# What about India?

#######################################################################################################################
#
#	Using the inference() function, now calculate the confidence intervals for the proportion of atheists
#	in 2012 in India.
#
#	First, make sure to note whether the conditions for inference are met.
#
#	The inference() function might be a bit slow.
#
#######################################################################################################################

# The subset for India for 2012:
india <- subset(atheism, atheism$nationality=="India" & atheism$year=="2012")

# The analysis using the inference() function:
inference(india$response, est = "proportion", type = "ci", method = "theoretical", success = "atheist")
