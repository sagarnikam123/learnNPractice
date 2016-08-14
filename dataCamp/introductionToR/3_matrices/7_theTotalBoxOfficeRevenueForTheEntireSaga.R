# The total box office revenue for the entire saga

#########################################################################################################
#																										
#	Just like every cbind() has a rbind(), every colSums() has a rowSums().								
#	Your R workspace already contains the all_wars_matrix that you constructed in the previous exercise	
#	(Type all_wars_matrix in the console if you do not recall what it contains).						
#	Let us now calculate the total box office revenue for the entire saga.								
#																										
#########################################################################################################

# Print box office Star Wars
all_wars_matrix

# Total revenue for US and non-US
total_revenue_vector <- colSums(all_wars_matrix)
