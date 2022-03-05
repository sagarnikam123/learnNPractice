# Question 6

#######################################################################################################################
#
#	To assess whether the linear model is reliable, you need to check for three things: 1. linearity 2. nearly
#	normal residuals 3. constant variability.
#
#	You already checked if the relationship between runs and at-bats is linear using a scatterplot. You should
#	also verify this condition with a plot of the residuals vs. at-bats. The lty=3 argument adds a horizontal dashed
#	line at y = 0:
#
#	plot(m1$residuals ~ mlb11$at_bats) abline(h = 0, lty = 3).
#
#	Which of the following statements about the residual plot is false?
#
#######################################################################################################################

1	The residuals appear to be randomly distributed around 0.
2	The residuals show a curved pattern.
3	The plot is indicative of a linear relationship between runs and at-bats.
4	The team with a very high residual compared to the others appears to be an outlier.

Answer - 2	The residuals show a curved pattern.
