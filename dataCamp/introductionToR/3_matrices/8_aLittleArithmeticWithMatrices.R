# A little arithmetic with matrices

#################################################################################################################
#																												
#	Similar to what you have learned with vectors, the standard operators										
#	like +, -, /, *, etc. work in an element-wise way on matrices in R.											
#																												
#	For example: 2 * my_matrix multiplies each element of my_matrix by two. Again,								
#	R recycles the value 2 behind the scenes, building a matrix containing only 2s with the same dimensions 	
#	as my_matrix. Then, R carries out the element-wise operation.												
#																												
#	As a newly-hired data analyst for Lucasfilm, it is your job is to find out how many visitors went 			
#	to each movie for each geographical area. You already have the total revenue figures in star_wars_matrix.	
#	Assume that the price of a ticket was 5 dollars. Note that box office numbers divided 						
#	by the ticket price gives you the number of visitors.														
#																												
#################################################################################################################

# Box office Star Wars: In Millions (!) 
# Construct matrix
box_office_all <- c(461, 314.4, 290.5, 247.9, 309.3, 165.8)
movie_names <- c("A New Hope","The Empire Strikes Back","Return of the Jedi")
col_titles <- c("US","non-US")
star_wars_matrix <- matrix(box_office_all, nrow = 3, byrow = TRUE, dimnames = list(movie_names, col_titles))

# Estimation of visitors
visitors <- star_wars_matrix/5
  
# Print the estimate to the console
visitors
