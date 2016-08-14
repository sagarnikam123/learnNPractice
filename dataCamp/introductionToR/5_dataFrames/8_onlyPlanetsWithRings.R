# Only planets with rings

#####################################################################################################
#																									
#	You will often want to select an entire column, namely one specific variable from a data frame.	 
#	If you want to select all elements of the variable rings, both planets_df[,5]					
#	and planets_df[,"rings"] do the trick.															
#																									
#	However, there is a short-cut. Use the $-sign to tell R 										
#	that it only has to look up all the elements of the variable behind the sign:					
#																									
#	data_frame_name$variable_name																	
#																									
#####################################################################################################

# 'planets_df' is pre-loaded in your workspace

# Create the rings_vector
rings_vector <- planets_df$rings
