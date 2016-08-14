# What's a factor and why would you use it? (2)

#####################################################################################################################
#																													
#	To create factors in R, you make use of the function factor(). First thing that you have to do is create a 		
#	vector that contains all the observations that belong to a limited number of categories.						
#	For example, gender_vector contains the sex of 5 different individuals:											
#																													
#	gender_vector <- c("Male","Female","Female","Male","Male")														
#																													
#	It is clear that there are two categories, or in R-terms 'factor levels', at work here: "Male" and "Female".	
#																													
#	The function factor() will encode the vector as a factor:														
#																													
#	factor_gender_vector <- factor(gender_vector)																	
#																													
#####################################################################################################################

gender_vector <- c("Male", "Female", "Female", "Male", "Male")

# Define factor_gender_vector using 'factor()'
factor_gender_vector <- factor(gender_vector)
