# Question 5

#######################################################################################################################
#
#	You can compute the ratio of the number of boys divided by the number of girls born in 1940 manually
#	by typing 1211684/1148715.
#
#	You can get that same ratio for all years by typing
#
#	present$boys/present$girls
#	Similarly, you can calculate the proportion of male newborns in 1940 by typing
#
#	1211684/(1211684 + 1148715)
#	To get that proportion for all years use present$boys/(present$boys + present$girls).
#
#	Note that with R as with your calculator, you need to be conscious of the order of operations.
#	Here, we want to divide the number of boys by the total number of newborns, so we have to use parentheses.
#	Without them, R will first do the division, then the addition, giving you something that is not a proportion.
#
#	Make a plot of the proportion of boys over time, and based on the plot determine if the
#	following statement is true or false: The proportion of boys born in the US has decreased over time.
#
#######################################################################################################################


1	TRUE
2	FALSE

plot(present$year, present$boys/(present$boys + present$girls))

Answer - 1	TRUE
