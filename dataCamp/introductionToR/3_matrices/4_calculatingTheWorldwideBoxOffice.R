# Calculating the worldwide box office

#################################################################################################
#
#	The single most important thing for a movie in order to become an instant legend
#	in Tinseltown is its worldwide box office figures.
#
#	To calculate the total box office revenue for the three Star Wars movies,
#	you have to take the sum of the US revenue column and the non-US revenue column.
#
#	In R, the function rowSums() conveniently calculates the totals for each row of a matrix.
#	This function creates a new vector:
#
#	sum_of_rows_vector <- rowSums(my_matrix)
#
#################################################################################################

# Box office Star Wars: In Millions (!)
# Construct matrix
box_office_all <- c(461, 314.4, 290.5, 247.9, 309.3, 165.8)
movie_names <- c("A New Hope","The Empire Strikes Back","Return of the Jedi")
col_titles <- c("US","non-US")
star_wars_matrix <- matrix(box_office_all, nrow=3, byrow = TRUE, dimnames = list(movie_names, col_titles))

# Your code here
worldwide_vector <- rowSums(star_wars_matrix)
