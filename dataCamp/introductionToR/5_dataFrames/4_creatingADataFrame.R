# Creating a data frame

#####################################################################################################################
#																													#
#	Since using built-in data sets is not even half the fun of creating your own data sets, the rest of this 		#
#	chapter is based on your personally developed data set. So put your jet pack on because it is time				#
#	for some good old fashioned space exploration!																	#
#																													#
#	As a first goal, you want to construct a data frame that describes the main characteristics of eight planets in #
#	our solar system. According to your good friend Buzz, the main features of a planet are:						#
#																													#
#	    The type of planet (Terrestrial or Gas Giant).																#
#	    The planet's diameter relative to the diameter of the Earth.												#
#	    The planet's rotation across the sun relative to that of the Earth.											#
#	    If the planet has rings or not (TRUE or FALSE).																#
#																													#
#	After doing some high-quality research on Wikipedia, you feel confident enough to create the necessary vectors:	#
#	planets, type, diameter, rotation and rings (see editor, note that an element of one vector is linked to the	#
#	element of another vector based on its position).																#
#																													#
#	You construct a data frame with the data.frame() function. As arguments, you should provide the above mentioned	#
#	vectors as input that should become the different columns of that data frame. Therefore,						#
#	it is important that each vector used to construct a data frame has an equal length. But do not forget that 	#
#	it is possible (and likely) that they contain different types of data.											#
#																													#
#####################################################################################################################

planets <- c("Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune");
type <- c("Terrestrial planet", "Terrestrial planet", "Terrestrial planet", "Terrestrial planet", "Gas giant", "Gas giant", "Gas giant", "Gas giant")
diameter <- c(0.382, 0.949, 1, 0.532, 11.209, 9.449, 4.007, 3.883); 
rotation <- c(58.64, -243.02, 1, 1.03, 0.41, 0.43, -0.72, 0.67);
rings <- c(FALSE, FALSE, FALSE, FALSE, TRUE, TRUE, TRUE, TRUE);

# Create the data frame:
planets_df  <- data.frame(planets,type,diameter,rotation,rings)
