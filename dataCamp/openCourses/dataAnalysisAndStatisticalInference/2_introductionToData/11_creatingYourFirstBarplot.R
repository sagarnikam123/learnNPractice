# Creating your first barplot

#######################################################################################################################
#
#	Now that you have calculated the relevant frequencies in the previous exercise,
#	you can represent them graphically. A barplot is a very appropriate type of graph for this task.
#
#	Making a barplot is easy: you use the function barplot().
#	This function requires you to put the table inside the barplot() command.
#
#######################################################################################################################

# Draw the barplot:
barplot(table(cdc$smoke100))
