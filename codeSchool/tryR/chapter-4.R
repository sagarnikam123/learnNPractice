#########################
#	Chapter - 4			#
#	Summary Statistics	#
#	Simple Statistics	#
#########################


# - how your data points are distributed, without the need to look closely at each one. 
# - functions for mean, median, and standard deviation, as well as ways to display them on your graphs.

# Mean
# Determining average salary of an company is an important assets in industry to check per capita income for worker is sufficient or not.
# Here's a vector containing the number of limbs each member has left, along with their names
salary <- c(4000, 3000, 5400, 6000, 2500, 3100, 2800, 3200)
names(salary) <- c('Andrew', 'Peter', 'Smitty', 'Hook', 'Scitel', 'Daniel', 'Mike', 'Hawkings')
print(salary)
mean(salary)
barplot(salary)
# If we draw a line on the plot representing the mean, we can easily compare the various values to the average.
# The "abline" function draws horizontal line with an h parameter or a v parameter for a vertical line.
# When it's called, it updates the previous plot.
abline(h = mean(salary)) #draws horizontal line

# Median
# Mean value is probably misleading if we have value .
# median is calculated by sorting the values and choosing the middle one (For sets with an even number of values, the middle two values are averaged.)
median(salary)
abline(h = median(salary))


#Standard Deviation
# The concept of "standard deviation" from the mean to describe the range of typical values for a data set. For a group of numbers, it shows how much they typically vary from the average value
deviation <- sd(salary)
abline(h=sd(salary)) #std dev line

#  one standard devation below the mean (the bottom of the normal range)
abline(h = mean(salary) - sd(salary))
