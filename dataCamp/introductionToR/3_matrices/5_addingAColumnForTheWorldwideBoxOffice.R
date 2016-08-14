# Adding a column for the Worldwide box office

#########################################################################################################
#																										
#	In the previous exercise you calculated the vector that contained the worldwide box office receipt	
#	for each of the three Star Wars movies. However, this vector is not yet part of star_wars_matrix.	
#																										
#	You can add a column or multiple columns to a matrix with the cbind() function,						
#	which merges matrices and/or vectors together by column. For example:								
#																										
#	big_matrix <- cbind(matrix1, matrix2, vector1 ...)													
#																										
#########################################################################################################

# Box office Star Wars: In Millions (!) 
# Construct matrix
box_office_all <- c(461, 314.4, 290.5, 247.9, 309.3, 165.8)
movie_names <- c("A New Hope","The Empire Strikes Back","Return of the Jedi")
col_titles <- c("US","non-US")
star_wars_matrix <- matrix(box_office_all, nrow = 3, byrow = TRUE, dimnames = list(movie_names, col_titles))

# The worldwide box office figures
worldwide_vector <- rowSums(star_wars_matrix)

# Bind the new variable worldwide_vector as a column to star_wars_matrix
all_wars_matrix <- cbind(star_wars_matrix,worldwide_vector)
