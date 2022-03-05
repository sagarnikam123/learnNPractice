# Factor levels

#####################################################################################################################
#
#	When you first get a data set, you will often notice that it contains factors with specific factor levels.
#	However, sometimes you will want to change the names of these levels for clarity or other reasons.
#	R allows you to do this with the function levels():
#
#	levels(factor_vector) <- c("name1","name2",...)
#
#	A good illustration is the raw data that is provided to you by a survey. A standard question
#	for every questionnaire is the gender of the respondent. You remember from the previous question that this is a
#	factor and when performing the questionnaire on the streets its levels are often coded as "M" and "F".
#
#	survey_vector <- c("M","F","F","M","M")
#
#	Next, when you want to start your data analysis, your main concern is to keep a nice overview of all
#	the variables and what they mean. At that point, you will often want to change the factor levels
#	to "Male" and "Female" instead of "M" and "F" to make your life easier.
#
#####################################################################################################################

survey_vector <- c("M", "F", "F", "M", "M")

# Encode survey_vector as a factor
factor_survey_vector <- factor(survey_vector)

# Specify the levels of 'factor_survey_vector'
levels(factor_survey_vector) <- c("Female","Male")

factor_survey_vector
