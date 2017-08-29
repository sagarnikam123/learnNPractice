# Subset - one last time

#######################################################################################################################
#	
#	What makes conditioning commands really powerful is the fact that you can use several of these conditions
#	together with the logical operators & and |.
#	
#	The & is read "and" so that
#	
#	subset(cdc, cdc$gender == "f" & cdc$age > 30)
#	will give you the data for women over the age of 30.
#	
#	The | character is read "or" so that
#	
#	subset(cdc, cdc$gender == "f" | cdc$age > 30)
#	will take people who are women or over the age of 30.
#	
#	In principle, you may use as many "and" and "or" clauses as you like when forming a subset.
#	
#######################################################################################################################

# Create the subset
under23_and_smoke <- subset(cdc, cdc$smoke100 == 1 & cdc$age < 23  )

# Print the top six rows of the subset
head(under23_and_smoke)