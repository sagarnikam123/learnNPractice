# Analyzing matrices, you shall

#########################################################################################################
#																										#
#	It is now time to get your hands dirty. In the following exercises you will analyze 				#
#	the box office numbers of the Star Wars franchise. May the force be with you!						#
#	In the editor, three vectors are defined. Each one represents the box office numbers from the 		#
#	first three Star Wars movies. The first element of each vector indicates the US box office revenue,	#
#	the second element refers to the Non-US box office (source: Wikipedia).								#
#																										#
#########################################################################################################

# Box office Star Wars: In Millions!
# The first element: US, the second element: Non-US 
new_hope <- c(460.998, 314.4)
empire_strikes <- c(290.475, 247.900)
return_jedi <- c(309.306, 165.8)

# Add your code below to Construct matrix
star_wars_matrix <- matrix(c(new_hope,empire_strikes,return_jedi) ,byrow=TRUE,nrow=3)
