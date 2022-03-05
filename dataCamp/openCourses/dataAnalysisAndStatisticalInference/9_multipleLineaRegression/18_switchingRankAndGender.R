# Switching rank and gender

#######################################################################################################################
#
#	Create a new model called m_bty_rank with gender removed and rank added in.
#
#######################################################################################################################

# Your linear model with rank and average beauty:
m_bty_rank <- lm(score ~ bty_avg + rank, data= evals)

# View the regression output:
summary(m_bty_rank)
