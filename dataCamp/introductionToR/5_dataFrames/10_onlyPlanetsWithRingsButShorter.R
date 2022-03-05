# Only planets with rings but shorter

#####################################################################################################################
#
#	So what exactly did you learn in the previous exercises? You selected a subset from a data frame (planets_df)
#	based on whether or not a certain condition was true (rings or no rings), and you managed to pull out
#	all relevant data. Pretty awesome! By now, NASA is probably already flirting with your CV ;-).
#
#	Now, let us move up one level and use the function subset(). You should see
#	the subset() function as a short-cut to do exactly the same as what you did in the previous exercises.
#
#	subset(my_data_frame, subset = some_condition)
#
#	The first argument of subset() specifies the data set for which you want a subset.
#	By adding the second argument, you give R the necessary information and conditions to select the correct subset.
#
#	For example:
#
#	subset(planets_df, subset = rings == TRUE)
#
#	R will give you exactly the same result as you got in the previous exercise.
#	But this time without needing the rings_vector!
#
#####################################################################################################################

# 'planets_df' is pre-loaded in your workspace

# Planets that are smaller than planet Earth:
small_planets_df  <- # Your code here!
