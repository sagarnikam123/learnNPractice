# R - The big calculator

#######################################################################################################################
#
#	Suppose you want to plot the total number of births: boys and girls combined. One way to do this is by
#	typing in the console mathematical expressions like 1211684 + 11485 to see the total number of births in 1940.
#	(Try it, you'll see it works).
#
#	We could repeat this once for each year, but there is a faster way. If we add the vector for births
#	for boys and girls, R will compute all sums simultaneously.
#
#	When adding the vectors with the births of boys and girls respectively, R will automatically take the element-wise sum. In this case, we'll get a vector with the total number of births per year.
#
#	Adding columns of a data frame is simple, since they have the same length by definition:
#
#	data_frame$variable_name_1
#	  + data_frame$variable_name_2
#	  + ...
#
#######################################################################################################################

# The present dataset is already loaded

# The vector babies
babies <- present$boys + present$girls

# Your plot
plot(present$year,babies, type="l")
