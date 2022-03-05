# Interlude (3)

#######################################################################################################################
#
#	What if you want all variables but only for the first 10 respondents? Yes, you could use cdc[1:10, 1:9],
#	but that would mean you have to count the number of variables in our set. Fortunately, R makes it easy:
#	if you want all rows or columns, you just leave it empty. So the former can be rewritten as cdc[1:10, ].
#
#	By leaving out an index or a range (as you didn't type anything between the comma and the square bracket),
#	you get all the columns. When starting out in R, this is a bit counterintuitive. Similarly, if you leave out
#	an index or range for the rows, you get all the observations. Typing cdc[, 6]
#	will give you all the weights for all 20,000 respondents.
#
#	So yes, typing cdc[,] will simply give you the entire data frame cdc.
#
#######################################################################################################################

# Create the subsets
resp205 <- cdc[205,]
ht_wt <- cdc[, 5:6]

# Print the subsets
resp205
head(ht_wt)
