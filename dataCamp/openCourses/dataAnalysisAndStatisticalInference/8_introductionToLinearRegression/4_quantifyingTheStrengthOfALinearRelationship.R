# Quantifying the strength of a linear relationship

#######################################################################################################################
#
#	As you know, when a relationship looks linear you can quantify the strength of the relationship with the
#	correlation coefficient. R has a very usefull function to calculate the correlation:
#
#	cor(input1, input2)
#
#######################################################################################################################

# The mlb11 data frame is already loaded into the workspace

# Calculate the correlation between runs and at_bats:
correlation <-cor(mlb11$runs, mlb11$at_bats)

# Print the result:
correlation
