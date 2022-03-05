# Turning info into knowledge - Categorical data

#######################################################################################################################
#
#	Another type of data you can analyze is categorical data. For this type of variable
#	it makes more sense to look at absolute or relative frequency.
#
#	The function table() counts the number of times each kind of category occurs in a variable.
#	For example, to see the number of people who have smoked at least 100 cigarettes in their lifetime,
#	try table(cdc$smoke100) in the console.
#
#	You can also get the relative frequencies by dividing the table by the amount of observations in your data frame.
#
#######################################################################################################################

# Create the frequency table here:
table(cdc$genhlth)

# Create the relative frequency table here:
table(cdc$genhlth)/dim(cdc)[1]
