# What's a factor and why would you use it? (3)

#####################################################################################################################
#																													#
#	There are two types of categorical variables:																	#
#	a nominal categorical variable and an ordinal categorical variable.												#
#																													#
#	A nominal variable is a categorical variable without an implied order. This means that it is impossible 		#
#	to say that 'one is worth more than the other'. For example, think of the categorical variable animals_vector 	#
#	with the categories "Elephant", "Giraffe", "Donkey" and "Horse". Here, it is impossible to say that one stands	#
#	above or below the other. (Note that some of you might disagree ;-) ).											#
#																													#
#	In contrast, ordinal variables do have a natural ordering. Consider for example the categorical variable		#
#	temperature_vector with the categories: "Low", "Medium" and "High". 											#
#	Here it is obvious that "Medium" stands above "Low", and "High" stands above "Medium".							#
#																													#
#####################################################################################################################

animals_vector <- c("Elephant", "Giraffe", "Donkey", "Horse")
temperature_vector <- c("High", "Low", "High","Low", "Medium")

factor_animals_vector <- factor(animals_vector)
factor_animals_vector
factor_temperature_vector <- factor(temperature_vector, order = TRUE, levels = c("Low", "Medium", "High"))
factor_temperature_vector
