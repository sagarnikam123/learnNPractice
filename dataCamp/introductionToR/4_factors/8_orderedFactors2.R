# Ordered factors (2)

#################################################################################################################
#
#	speed_vector should be converted to an ordinal factor since its categories have a natural ordening.
#	By default, the function factor() transforms speed_vector into an unordered factor.
#	To create an ordered factor, #	you have to add two additional arguments: ordered and levels.
#
#	factor(some_vector, ordered = TRUE, levels = c("Level_1", "Level_2" ...))
#
#	By setting the argument ordered to TRUE in the function factor(), you indicate that the factor is ordered.
#	With the argument levels you give the values of the factor in the correct order,
#	e.g. levels = c("Low", "Medium", "High").
#
#################################################################################################################

speed_vector <- c("Fast", "Slow", "Slow", "Fast", "Ultra-fast")

# Add your code below
factor_speed_vector <-  factor(speed_vector,ordered=TRUE,levels=c("Slow","Fast","Ultra-fast"))

# Print
factor_speed_vector

# R prints automagically in the right order
summary(factor_speed_vector)
