# Adding a row

#########################################################################################################
#
#	Just like every action has a reaction, every cbind() has a rbind().
#	(We admit, we are pretty bad with metaphors.)
#
#	Your R workspace (check out what a workspace is) has been initialized to and contains two matrices:
#	the star_wars_matrix that we have just used for the first trilogy but also the star_wars_matrix2
#	for the second trilogy. Type the name of the matrices in the console and press enter
#	in case you want to have a closer look.
#
#########################################################################################################

# Matrix that contains the first trilogy box office
star_wars_matrix

# Matrix that contains the second trilogy box office
star_wars_matrix2

# Combine both Star Wars trilogies in one matrix
all_wars_matrix <- rbind(star_wars_matrix, star_wars_matrix2)
