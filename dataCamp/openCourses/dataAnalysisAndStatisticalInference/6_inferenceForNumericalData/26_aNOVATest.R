# ANOVA test

#######################################################################################################################
#
#	In this exercise, we'll run the ANOVA test and analyze its outcome. Execute the code now and investigate
#	the output.
#
#	Let’s examine the output: First, we have a numerical response variable (score on vocabulary test) and
#	a categorical explanatory variable (class). Since class has four levels, comparing average scores across the
#	levels of the class variable requires ANOVA.
#
#	Before we get to the ANOVA output we are presented with a series of summary statistics and the associated
#	hypotheses.
#
#	Note that the alternative hypothesis is set to greater because F-tests are always onesided.
#
#######################################################################################################################

# The test:
inference(y = gss$wordsum, x = gss$class, est = "mean", method = "theoretical", type = "ht", alternative = "greater")
