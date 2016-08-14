# A little arithmetic with matrices (2)

#############################################################################################################
#																											
#	Just like 2*my_matrix multiplied every element of my_matrix by two, my_matrix1 * my_matrix2 creates 	
#	a matrix where each element is the product of the corresponding elements in my_matrix1 and my_matrix2.	
#																											
#	After looking at the result of the previous exercise, big boss Lucas points out that the ticket prices	
#	went up over time with one dollar per movie. He asks to redo the analysis based on the prices 			
#	you can find in ticket_prices_matrix (source: imagination).												
#																											
#	Those who are familiar with matrices should note that this is not the standard matrix multiplication	
#	for which you should use %*% in R.																		
#																											
#############################################################################################################

# Box office Star Wars: In Millions (!) 
# Construct matrix 
box_office_all <- c(461, 314.4, 290.5, 247.9, 309.3, 165.8)
movie_names <- c("A New Hope","The Empire Strikes Back","Return of the Jedi")
col_titles <- c("US","non-US")
star_wars_matrix <- matrix(box_office_all, nrow = 3, byrow = TRUE, dimnames = list(movie_names, col_titles))
ticket_prices_matrix <- matrix(c(5, 5, 6, 6, 7, 7), nrow = 3, byrow = TRUE, dimnames = list(movie_names, col_titles)) 

# Estimated number of visitors
visitors <- star_wars_matrix/ticket_prices_matrix

# Average number of US visitors
average_us_visitors <- mean(visitors[,"US"])

# Average number of non-US visitors
average_non_us_visitors <-  mean(visitors[,"non-US"])
