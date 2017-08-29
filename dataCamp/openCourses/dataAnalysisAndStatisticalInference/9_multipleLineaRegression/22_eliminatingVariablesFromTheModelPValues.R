# Eliminating variables from the model - p-value selection

#######################################################################################################################
#			
#	Now you will create a new model, where you will drop the variable with the highest p-value in the m_full model.
#	
#######################################################################################################################

# The full model:
m_full <- lm(score ~ rank + ethnicity + gender + language + age + cls_perc_eval
             + cls_students + cls_level + cls_profs + cls_credits + bty_avg, data = evals)

# Your new model:
m_new <- lm(score ~ rank +  ethnicity + gender + language + age + cls_perc_eval
             + cls_students + cls_level + cls_credits + bty_avg, data = evals)

# View the regression output:
summary(m_new)