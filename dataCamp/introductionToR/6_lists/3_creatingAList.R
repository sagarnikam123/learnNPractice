# Creating a list

#####################################################################################
#
#	Let us create our first list! To construct a list you use the function list():
#
#	my_list <- list(component1, component2 ...)
#
#	The arguments to the list function are the list components. Remember,
#	these components can be a collection of matrices, vectors…
#
#####################################################################################

# Vector with numerics from 1 up to 10
my_vector <- 1:10
# Matrix with numerics from 1 up to 9
my_matrix <- matrix(1:9, ncol = 3)
# First 10 elements of the built-in data frame 'mtcars'
my_df <- mtcars[1:10,]

# Construct list with these different elements:
my_list <- list(my_vector,my_matrix,my_df)
