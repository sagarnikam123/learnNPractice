# Multiple linear regression

#######################################################################################################################
#
#	The data set contains several variables on the beauty score of the professor: individual ratings from each of
#	the six students who were asked to score the physical appearance of the professors and the
#	average of these six scores.
#
#	Let's take a look at the relationship between one of these scores and the average beauty score.
#
#######################################################################################################################

# Your scatterplot:
plot(evals$bty_avg, evals$bty_f1lower)

# The correlation:
cor(evals$bty_avg, evals$bty_f1lower)
