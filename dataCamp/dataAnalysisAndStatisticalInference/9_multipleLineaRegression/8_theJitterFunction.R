# The jitter function

#######################################################################################################################
#			
#	Replot the scatterplot, but this time use the jitter() function. What was misleading 
#	about the initial scatterplot?
#	
#######################################################################################################################

?jitter
# Apply jitter() on the bty_avg or score variable of your initial plot:
plot(jitter(evals$score) ~ evals$bty_avg )