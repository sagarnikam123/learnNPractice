# Battle of the sexes

#############################################################################################################
#
#	"All animals are equal, but some animals are more equal than others." – George Orwell
#
#	In factor_survey_vector we have a factor with two levels: Male and Female. But how does R value these
#	relatively to each other? In other words, who does R think is better, males or females?
#
#############################################################################################################

survey_vector <- c("M", "F", "F", "M", "M")
factor_survey_vector <- factor(survey_vector)
levels(factor_survey_vector) <- c("Female", "Male")

# Male
factor_survey_vector[1]
# Female
factor_survey_vector[2]
# Battle of the sexes: Male 'larger' than female?
factor_survey_vector[1] > factor_survey_vector[2]
