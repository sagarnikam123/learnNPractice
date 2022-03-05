# Interlude: How R thinks about data (1)

#######################################################################################################################
#
#	It was mentioned that R stores data in data frames, which you might think of as a type of spreadsheet.
#	Each row is a different observation (a different respondent) and each column is a different variable
#	(the first is genhlth, the second exerany and so on).
#
#	This means you can also retrieve values from our data frame using the indices (positions) of the rows and columns
#	you want. For example, to see the sixth variable (which happens to be weight) of the 567th respondent,
#	use the format cdc[567, 6]. This is called the row-and-column notation. Note that indices start at 1.
#
#######################################################################################################################

# Create the subsets
height_1337 <- cdc[1337,5]
weight_111 <- cdc[111,6]

# Print the results
height_1337
weight_111
