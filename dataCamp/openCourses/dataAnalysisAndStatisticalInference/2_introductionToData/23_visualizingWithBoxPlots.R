# Visualizing with box plots

#######################################################################################################################
#	
#	With our subsetting tools in hand, let's return to the task of the day: 
#	making basic summaries of the BRFSS questionnaire.
#	
#	You already looked at categorical data such as smoke100 and gender so now let's turn our attention
#	to numerical data. A common way to visualize numerical data is with a box plot.
#	
#	To construct a box plot for a single variable, you use the boxplot() function. Example: boxplot(cdc$weight).
#	
#######################################################################################################################

# Draw the box plot of the respondents heights
boxplot(cdc$height)

# Print the summary
summary(cdc$height)