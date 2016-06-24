# Creating a named list

#################################################################################################################
#																												#
#	Well done! Let us keep this train going!																	#
#																												#
#	Just like on your to-do list, you want to avoid not knowing or remembering what the components of 			#
#	your list stand for. That is why you should give names to them:												#
#																												#
#	my_list <- list(name1 = your_comp1, 																		#
#	                name2 = your_comp2 ...)																		#
#																												#
#	This creates a list with the components "name1" and "name2" and so on. If you want to name your lists after	# 
#	you've created them, you can use the names() function as you did with vectors.								#
#	The following commands are fully equivalent to the assignment above:										#
#																												#
#	my_list <- list(your_comp1, your_comp2 ...)																	#
#	names(my_list) <- c("name1", "name2" ...)																	#	
#																												#
#################################################################################################################

# Vector with numerics from 1 up to 10
my_vector <- 1:10 
# Matrix with numerics from 1 up to 9
my_matrix <- matrix(1:9, ncol = 3)
# First 10 elements of the built-in data frame 'mtcars'
my_df <- mtcars[1:10,]

# Construct 'my_list' with these different elements:
my_list <- list("vec"=my_vector, "mat"=my_matrix,"df"=my_df)

# Print 'my_list' to the console
my_list
