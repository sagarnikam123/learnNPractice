# Putting it in a graph

#######################################################################################################################
#	
#	R has powerful graphical capabilities. We can create a simple plot of the number of girls born per year with a 
#	command of the form
#	
#	plot(x, y)
#	Between the parentheses of the plot() function, you provide the arguments separated by a comma. 
#	The first argument in the plot() function specifies the variable for the x-axis and the second for the y-axis.
#	
#######################################################################################################################

# The present dataset is already loaded

# Type here the code to create the plot:
plot(present$year, present$girls)