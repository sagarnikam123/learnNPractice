# Confidence intervals

#######################################################################################################################
#
#	Now let's return for a moment to the question that first motivated this lab: based on this sample, what can we
#	infer about the population? Based only on this single sample, the best estimate of the average living area of
#	houses sold in Ames would be the sample mean, usually denoted as x¯¯¯x¯ (here we're calling it sample_mean).
#
#	That serves as a good point estimate but it would be useful to also communicate how uncertain we are of that
#	estimate. This can be captured by using a confidence interval.
#
#	We can calculate a 95% confidence interval for a sample mean
#	by adding and subtracting 1.96 standard errors to the point estimate.
#
#	se <- sd(samp)/sqrt(60)
#	lower <- sample_mean - 1.96 * se
#	upper <- sample_mean + 1.96 * se
#	c(lower, upper)
#	It is an important inference that we make with this: even though we don't know what the full population looks
#	like, we're 95% confident that the true average size of houses in Ames lies between the values lower and upper.
#
######################################################################################################################

# The ames data frame is already loaded into the workspace,
# as are population, samp and sample_mean

# Calculate the standard error:
se <- sd(samp)/sqrt(60)

# Calculate the lower and upper bounds of your confidence interval and print them:
lower <- sample_mean - 1.96 * se
upper <- sample_mean + 1.96 * se
c(lower, upper)
