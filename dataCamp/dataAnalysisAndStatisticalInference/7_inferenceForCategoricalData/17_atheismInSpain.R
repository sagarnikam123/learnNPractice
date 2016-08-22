# Atheism in Spain

#######################################################################################################################
#	
#	The question of atheism was asked by WIN-Gallup International in a similar survey that was conducted in 2005. 
#	Table 4 on page 13 of the report summarizes survey results from 2005 and 2012 for 39 countries.
#	
#	Use the inference() function to answer the following question. As always, write out the hypotheses for any tests
#	you conduct and outline the status of the conditions for inference. The atheism data set is already loaded in 
#	the workspace.
#	
#######################################################################################################################

# Take the spain subset:
spain <- subset(atheism, atheism$nationality == "Spain")

# Calculate the proportion of atheists from the spain subset:
proportion <- nrow(subset(spain,response == 'atheist'))/nrow(spain)

# Use the inference() function:
inference(spain$response, spain$year, est = "proportion", type = "ci", method = "theoretical", success = "atheist")