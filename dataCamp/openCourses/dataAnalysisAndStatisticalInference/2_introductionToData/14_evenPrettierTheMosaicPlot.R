# Even prettier: the Mosaic Plot

#######################################################################################################################
#	
#	The table command can be used to tabulate any number of variables that you provide. 
#	This means you can investigate how different categories relate to each other. For example, you can see 
#	how many people have smoked at least 100 cigarettes in the different general health groups by executing
#	
#	table(cdc$genhlth, cdc$smoke100).
#	Go ahead and try this in the console before starting of with the challenges.
#	
#	To have a nice graphical representation of this distribution you can use the mosaicplot() command.
#	
#######################################################################################################################

# How many participants have smoked across gender?
gender_smokers <- table(cdc$gender,cdc$smoke100)

# Print out gender_smokers
gender_smokers

# Plot the mosaicplot
mosaicplot(gender_smokers)
