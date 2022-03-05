# Taking into account gender

#######################################################################################################################
#
#	In order to see if beauty is still a significant predictor of professor score after we've accounted for the
#	gender is the professor, we can add the gender term into the model.
#
#######################################################################################################################

# Your new linear model:
m_bty_gen <-lm(score ~ bty_avg + gender, data= evals)

# Study the outcome:
summary(m_bty_gen)
