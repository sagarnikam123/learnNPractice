# Analyze the variables

#######################################################################################################################
#
#	Create numerical and visual summaries of the two variables individually to better understand their distribution.
#	Also compute summary statistics and visualizations that display the relationship between the two variables.
#
#######################################################################################################################

# Numerical and visual summaries of wordsum and class:
summary(gss$wordsum)
summary(gss$class)

hist(gss$wordsum)
boxplot(gss$wordsum)
hist(table(gss$class))
boxplot(gss$wordsum ~ gss$class)

# Numerical and visual summaries of their relations:
by(gss$wordsum, gss$class, FUN=mean )
