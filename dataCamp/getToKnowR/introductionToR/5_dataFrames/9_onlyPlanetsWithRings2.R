# Only planets with rings (2)

#################################################################################################################
#																												#
#	You probably remember from highschool that some planets in our solar system have rings and others do not.	#
#	But due to other priorities at that time (read: puberty) you can not recall their names,					#
#	let alone their rotation speed, etc.																		#
#																												#
#	Could R help you out? (Spoiler alert: of course it can!)													#
#																												#
#	If you type rings_vector in the console, you get:															#
#																												#
#	[1] FALSE FALSE FALSE FALSE  TRUE  TRUE  TRUE  TRUE															#
#																												#
#	This means that the first four observations (or planets) do not have a ring (FALSE),						#
#	but the other four do (TRUE). However, you do not get a nice overview of the names of these planets,		#
#	their diameter, etc. As a next step, use rings_vector to select all the data (that is, all columns)			#
#	on the four planets with rings from planets_df.																#
#																												#
#################################################################################################################

# 'planets_df' is pre-loaded in your workspace

# Planets that are smaller than planet Earth:
small_planets_df  <- subset( planets_df, subset=diameter < 1 )
