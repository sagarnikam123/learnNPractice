# Summarizing a factor

#########################################################################################################
#																										
#	After finishing this course, one of your favourite functions in R will be summary().				
#	This will give you a quick overview of some_variable:												
#																										
#	summary(some_variable)																				
#																										
#	Going back to our survey, you would like to know how many "Male" responses you have in your study,	
#	and how many "Female" responses. The summary() function gives you the answer to this question.		
#																										
#########################################################################################################

survey_vector <- c("M", "F", "F", "M", "M")
factor_survey_vector <- factor(survey_vector)
levels(factor_survey_vector) <- c("Female", "Male")
factor_survey_vector

# Type your code here for 'survey_vector'
summary(survey_vector)

# Type your code here for 'factor_survey_vector'
summary(factor_survey_vector)
