# Selection of data frame elements

#####################################################################################################################
#																													
#	Similar to vectors and matrices, you select elements from a data frame with the help of square brackets [ ].	
#	By using a comma, you can indicate what to select from the rows and the columns respectively. For example:		
#																													
#	    my_data_frame[1,2] selects from the first row in my_data_frame the second element.							
#	    my_data_frame[1:3,2:4] selects rows 1,2,3 and columns 2,3,4 in my_data_frame.								
#																													
#	Sometimes you want to select all elements of a row or column. To do this, you can use the follwing. 			
#	my_data_frame[1, ] selects all elements of the first row. Let us now apply this technique on planets_df!		
#																													
#####################################################################################################################

# The 'planets_df' data frame from the previous exercise is pre-loaded

# All data from the first three planets
closest_planets_df <- planets_df[1:3,]

# All data from the last three planets
furthest_planets_df <- planets_df[6:8,]

# Have a look:
closest_planets_df
furthest_planets_df
