# The search for the best model

#######################################################################################################################
#			
#	You will start with a full model that predicts professor score based on rank, ethnicity, gender, language of 
#	the university where they got their degree, age, proportion of students that filled out evaluations, 
#	class size, course level, number of professors, number of credits, average beauty rating, outfit,
#	and picture color.
#	
#	Note you do not included the pic_outfit or pic_color variables in the full model because the original study states that these variables were used in a different analysis evaluating whether they're related to how highly the six students involved in the study score the professors' beauty (not related to how the students evaluate their professors in class).
#			
#######################################################################################################################

# The full model:
m_full <- lm(score ~ rank + ethnicity + gender + language + age + cls_perc_eval
             + cls_students + cls_level + cls_profs + cls_credits + bty_avg, data = evals)

# View the regression output:
summary(m_full)