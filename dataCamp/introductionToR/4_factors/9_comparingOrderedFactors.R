# Comparing ordered factors

#########################################################################################################
#																										
#	Having a bad day at work, 'data analyst number two' enters your office and starts complaining that	
#	'data analyst number five' is slowing down the entire project. Since you know that					
#	'data analyst number two' has the reputation of being a smarty-pants,								
#	you first decide to check if his statement is true.													
#																										
#	The fact that factor_speed_vector is now ordered enables us to compare different elements			
#	(the data analysts in this case). You can simply do this by using the well-known operators.			
#																										
#########################################################################################################

speed_vector <- c("Fast", "Slow", "Slow", "Fast", "Ultra-fast")
factor_speed_vector <- factor(speed_vector, ordered = TRUE, levels = c("Slow", "Fast", "Ultra-fast"))

# Your code below
compare_them <- speed_vector[2] > speed_vector[5]

# Is data analyst 2 faster than data analyst 5?
compare_them
