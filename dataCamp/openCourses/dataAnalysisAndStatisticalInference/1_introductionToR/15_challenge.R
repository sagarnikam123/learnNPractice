# Challenge

#######################################################################################################################
#
#	Make a plot that displays the boy-to-girl ratio for every year in the data set.
#
#######################################################################################################################

# The present dataset is already loaded

# Plot the boy-to-girl ratio for every year:
plot(present$year, present$boys/present$girls, type="l")
