# And China?

#######################################################################################################################
#
#	What'll be the situation in China? Perform the same analysis for China.
#
#	The inference() function might be a bit slow.
#
#######################################################################################################################

# The subset for China for 2012:
china <- subset(atheism, atheism$nationality=="China" & atheism$year == "2012")

# The analysis using the inference() function:
inference(china$response, est = "proportion", type = "ci", method = "theoretical", success = "atheist")
