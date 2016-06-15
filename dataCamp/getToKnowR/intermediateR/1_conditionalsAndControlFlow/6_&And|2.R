# & and | (2)

#########################################################################################################
#																										#
#	Just as relational operators, logical operators work perfectly fine with vectors and matrices.		#
#																										#
#	Both the vectors linkedin and facebook are available again. Also a matrix views has been defined;	#
#	the first and second rows correspond to the linkedin and facebook vectors, respectively.			#
#	Ready for some advanced queries to gain more insights in your social outreach?						#
#																										#
#########################################################################################################

# The social data (linkedin, facebook, views) has been created for you

# linkedin exceeds 10 but facebook below 10
linkedin > 10 & facebook < 10

# When were one or both visited at least 12 times?
linkedin >= 12 | facebook  >= 12

# When is views between 11 (exclusive) and 14 (inclusive)?
views > 11 & views <= 14
