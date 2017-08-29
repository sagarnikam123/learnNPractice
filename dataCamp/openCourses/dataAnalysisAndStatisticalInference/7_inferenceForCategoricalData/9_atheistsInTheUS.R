# Atheists in the US

#######################################################################################################################
#	
#	To investigate the link between these two ways of organizing this data, take a look at the estimated proportion of
#	atheists in the United States. Towards the bottom of Table 6, you see that this is 5%. You should be able 
#	to come to the same number using the atheism data.
#	
#	Here, you will work with the data set us12. This data set contains only the rows in atheism associated 
#	with respondents to the 2012 survey from the United States. You can check the code used to create 
#	this data set in the editor.
#	
#######################################################################################################################

# Code to create the us12 subset: 
us12 <- subset(atheism, atheism$nationality == "United States" & atheism$year =="2012")

# Calculate the proportion of atheist responses:
proportion <- sum(us12$response=="atheist")/sum(us12$year==2012)

# Print the proportion:
proportion
