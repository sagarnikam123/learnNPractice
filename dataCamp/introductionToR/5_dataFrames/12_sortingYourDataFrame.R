# Sorting your data frame

#############################################################################################################
#																											
#	Alright, now that you understand the order() function, let us do something useful with it.				
#	You would like to rearrange your data frame such that it starts with the largest planet and ends with	 
#	the smallest one. A sort on the diameter column, as you will.											
#																												
#############################################################################################################

# 'planets_df' is pre-loaded in your workspace

# What is the correct ordering based on the planets_df$diameter variable?
positions <-  order(planets_df$diameter,decreasing=TRUE)

# Create new "ordered" data frame:
largest_first_df <- planets_df[positions,]
