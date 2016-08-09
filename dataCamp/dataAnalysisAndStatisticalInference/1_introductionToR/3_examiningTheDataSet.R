# Examining the data set

#######################################################################################################################
#	
#	In the previous exercises you have seen how your data set got printed in the console (if not, just type present 
#	in the console and press enter). What you should see are four columns of numbers, each row representing a different
#	year: the first entry in each row is simply the row number, the second is the year, and the third and fourth are 
#	the numbers of boys and girls born that year, respectively.
#
#	Note that the row numbers in the first column are not part of the present data set. R adds them as part of its 
#	printout to help you make visual comparisons. You can think of them as the index that you see on the left side
#	of a spreadsheet. In fact, the comparison to a spreadsheet will generally be helpful. R has stored the data in a 
#	kind of spreadsheet or table called a data frame.
#
#	Let's have a look at how you can investigate the structure of the present data frame. A first way to do this is 
#	with dim(my_data_frame). This R function will give you the dimensions of your data frame. The first element is the
#	number of rows, the second the number of columns.
#
#	You can also see the names of these columns (or variables) by using the names() function: names(my_data_frame).
#
#######################################################################################################################

# The present data frame is already loaded

# Print the number of rows and variables with the dim() function:
dim(present)

# Print the names of the variables of the data frame:
names(present)