# More on box plots

#######################################################################################################################
#	
#	The purpose of a box plot is to provide a thumbnail sketch of a variable for the purpose of comparing across 
#	several categories. 
#	So you can, for example, compare the heights of men and women with boxplot(cdc$height ~ cdc$gender).
#	
#	This notation is new. The ~ operator can be read "versus" or "as a function of". 
#	So you're asking R to give you a box plot of heights where the groups are defined by gender.
#	
#######################################################################################################################

# Draw the box plot of the weights versus smoking
boxplot(cdc$weight ~ cdc$smoke100)