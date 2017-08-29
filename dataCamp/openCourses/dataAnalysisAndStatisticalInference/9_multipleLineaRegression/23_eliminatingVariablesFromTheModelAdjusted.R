# Eliminating variables from the model - adjusted R-squared selection

#######################################################################################################################
#			
#	Now you will create a new model, where you will drop the variable that when dropped yields the 
#	highest improvement in the adjusted R2R2.
#	
#######################################################################################################################

# The full model:
m_full <- lm(score ~ rank + ethnicity + gender + language + age + cls_perc_eval + cls_students +
               cls_level + cls_profs + cls_credits + bty_avg, data = evals)
summary(m_full)$adj.r.squared

# Remove rank:
m1 <- lm(score ~ ethnicity + gender + language + age + cls_perc_eval + cls_students + cls_level +
           cls_profs + cls_credits + bty_avg, data = evals)
summary(m1)$adj.r.squared

# Remove ethnicity:
m2 <- lm(score ~ gender + language + age + cls_perc_eval + cls_students + cls_level +
           cls_profs + cls_credits + bty_avg, data = evals)
summary(m2)$adj.r.squared

# Remove gender:
m3 <- lm(score ~ language + age + cls_perc_eval + cls_students + cls_level +
           cls_profs + cls_credits + bty_avg, data = evals)
summary(m3)$adj.r.squared

# Remove language
m4 <- lm(score ~ age + cls_perc_eval + cls_students + cls_level +
           cls_profs + cls_credits + bty_avg, data = evals)
summary(m4)$adj.r.squared

# Remove age
m5 <- lm(score ~ cls_perc_eval + cls_students + cls_level +
           cls_profs + cls_credits + bty_avg, data = evals)
summary(m5)$adj.r.squared

# Remove cls_perc_eval
m6 <- lm(score ~  cls_students + cls_level +
           cls_profs + cls_credits + bty_avg, data = evals)
summary(m6)$adj.r.squared

# Remove cls_students
m7 <- lm(score ~   cls_level + 
           cls_profs + cls_credits + bty_avg, data = evals)
summary(m7)$adj.r.squared

# Remove cls_level
m8 <- lm(score ~ cls_profs + cls_credits + bty_avg, data = evals)
summary(m8)$adj.r.squared

# Remove cls_profs
m9 <- lm(score ~  cls_credits + bty_avg, data = evals)
summary(m9)$adj.r.squared

# Remove cls_credits
m10 <- lm(score ~ bty_avg, data = evals)
summary(m10)$adj.r.squared