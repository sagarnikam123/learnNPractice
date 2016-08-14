# Selection of data frame elements (2)

#############################################################################################################
#																											
#	Instead of using numerics to select elements of a data frame, you can also use 							
# the variable names to select columns of a data frame.														
# 																											
# Maybe you want to select only the first 3 elements of the variable 'type'. One way to do this is: 		
# planets_df[1:3,1]. A possible disadvantage of this approach is that you have to know (or look up) 		
# the position of the variable 'type', which gets hard if you have a lot of variables. It is often easier	 
# to just make use of the variable name, e.g. planets_df[1:3,"type"].										
# 																											
#############################################################################################################

# The 'planets_df' data frame from the previous exercise is pre-loaded

# Do selection on both rows and columns
furthest_planets_diameter <- planets_df[3:8,"diameter"]
