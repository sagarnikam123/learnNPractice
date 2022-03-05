# Interlude (4)

#######################################################################################################################
#
#	An alternative method to access the weight data is by referring to its name. In the previous exercises you have
#	been using statements such as cdc$weight to view variables in the data. The dollar-sign tells R to look in cdc
#	for the column called weight.
#
#	Now you can combine this technique with what you just learned. You can see the weight for the 567th respondent by
#	typing cdc$weight[567]. Since it's a single vector, you can subset it with just a single index inside square
#	brackets. Similarly, for the first 10 respondents: cdc$weight[1:10].
#
#	The command above returns the same result as the cdc[1:10,6] command. Both row-and-column notation and
#	dollar-sign notation are widely used. Which one you choose to use depends on your personal preference.
#
#######################################################################################################################

# Create the subsets
resp1000_smk <- cdc$smoke100[1000]
first30_ht <- cdc$height[1:30]

# Print the subsets
resp1000_smk
first30_ht
