# More than natural variation?

#######################################################################################################################
#
#	Let's see if the apparent trend in the plot is something more than natural variation. Fit a linear model
#	called m_bty to predict average professor score by average beauty rating and add the line to your plot using
#	abline(m_bty)
#
#######################################################################################################################

# Your initial plot:
plot(evals$score ~ jitter(evals$bty_avg))

# Construct the linear model:
m_bty <- lm(formula= score ~ bty_avg, data=evals)

# Plot your linear model on your plot:
abline(m_bty)
