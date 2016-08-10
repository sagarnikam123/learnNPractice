# Interlude (2)

#######################################################################################################################
#	
#	However, R doesn't just allow you to select on one index. You can also subset using an index range. 
#	For example, to see the weights for the first 10 respondents you can type cdc[1:10, 6]. In this expression, 
#	you have asked just for rows in the range 1 through 10.
#	
#	R uses the : to create a range of values, so 1:10 expands to 1, 2, 3, 4, 5, 6, 7, 8, 9, 10. 
#	You can see this by entering 1:10 in the console.
#	
#	This also allows you to do for example cdc[5:16, 1:3] to retrieve the first 3 variables 
#	for respondents 5 through 16.
#	
#######################################################################################################################

# Create the subsets
first8 <- cdc[1:8, 3:5]
wt_gen_10_20 <- cdc[10:20, 6:9]

# Print the subsets
first8
wt_gen_10_20