# & and |

#####################################################################################################################
#																													
#	Before you work your way through the next exercises, have a look at the following R expressions;				
#	all of them will evaluate to TRUE:																				
#																													
#	TRUE & TRUE																										
#	FALSE | TRUE																									
#	5 <= 5 & 2 < 3																									
#	3 < 4 | 7 < 6																									
#																													
#	In this exercise, you'll be working with the last variable. This variable equals the last value of the linkedin	
#	vector that you've worked with. The linkedin vector represents the number of LinkedIn views your profile had 	
#	in the last seven days, remember? Both the variables linkedin and last are already defined in the editor.		
#																													
#####################################################################################################################

# The linkedin and last variable are already defined for you
linkedin <- c(16, 9, 13, 5, 2, 17, 14)
last <- tail(linkedin, 1)

# Is last under 5 or above 10?
last < 5 | last > 10

# Is last between 15 (exclusive) and 20 (inclusive)?
last > 15 & last <= 20 

# Is last between 0 and 5 or between 10 and 15?
(last > 0 & last < 5) | (last > 10 & last < 15)
