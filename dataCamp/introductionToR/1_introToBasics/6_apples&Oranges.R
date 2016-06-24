#Apples and oranges

#########################################################################################################################
#																														#
#	Common knowledge tells you not to add apples and oranges. But hey, that is what you just did, no :-)? 				#
#	The my_apples and my_oranges variables both contained a number in the previous exercise. 							#
#	The + operator works with numeric variables in R. If you really tried to add "apples" and "oranges", and 			#
#	assigned a text value to the variable my_oranges (see the editor), you would be trying to assign the addition of	#
#	a numeric and a character variable to the variable my_fruit. This is not possible.									#
#																														#
#########################################################################################################################

# Assign a value to the variable called 'my_apples'
my_apples <- 5 

# Print out the value of 'my_apples'
my_apples       

# Assign a value to the variable 'my_oranges' and print it out
#my_oranges <- "six" 
my_oranges <- 6
my_oranges 

# New variable that contains the total amount of fruit
my_fruit <- my_apples + my_oranges 
my_fruit
