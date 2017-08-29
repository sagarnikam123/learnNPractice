# Comparing the data set

#######################################################################################################################
#	
#	In addition to simple mathematical operators like subtraction and division, you can ask R to make comparisons: 
#	greater than with >, less than with <, and equality with ==.
#	
#	For example, we can ask if boys outnumber girls in each year with the expression present$boys > present$girls 
#	(Try it by typing it into the console). This command returns 63 values of either TRUE 
#	if that year had more boys than girls, or FALSE if that year did not.
#	
#	This output shows a different kind of data than we have considered so far. In the present data frame our
#	values are numerical (the year, the number of boys and girls). Here, we've asked R to create logical data, 
#	data where the values are either TRUE or FALSE. This is called a boolean value. In general, data analysis will
#	involve many different kinds of data types, and one reason for using R is that
#	it is able to represent and compute with many of them.
#	
#######################################################################################################################

# The present dataset is already loaded.

# Check when boys outnumber girls
present$boys > present$girls