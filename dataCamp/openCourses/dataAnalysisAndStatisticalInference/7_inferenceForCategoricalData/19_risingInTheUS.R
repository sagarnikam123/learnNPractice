# Rising in the US?

#######################################################################################################################
#
#	Will this situation be the same in the United States?
#
#	Let's perform the same analysis for the US.
#
#######################################################################################################################

# Take the us subset:
us <- subset(atheism, atheism$nationality == "United States")

# Calculate the proportion of atheists from the us subset:
proportion <- nrow(subset(us,response == 'atheist'))/nrow(us)

# Use the inference() function:
inference(us$response, us$year, est = "proportion", type = "ci", method = "theoretical", success = "atheist")
