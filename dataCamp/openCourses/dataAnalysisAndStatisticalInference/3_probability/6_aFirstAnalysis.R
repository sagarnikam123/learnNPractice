# A first analysis

#######################################################################################################################
#	
#	To start, let's look at the distribution of the shooting streaks. Along with the data frame, 
#	we also loaded the custom function calc_streak() into the workspace.
#	
#	We'll use this function to calculate the lengths of all shooting streaks and then look at the distribution 
#	with a barplot. Note that a bar plot is preferable to a histogram here since our variable is discrete 
#	(we're dealing with counts) instead of continuous.
#	
#######################################################################################################################

calc_streak = function(x){
	 y <- rep(0,length(x))
	 y[x == "H"] <- 1
	 y <- c(0, y, 0)
	 wz <- which(y == 0)
	 streak <- diff(wz) - 1
  	 return(streak)
  	}


# Assign Kobe's streak lengths:
kobe_streak <- calc_streak(kobe$basket)

# Draw a barplot of the result:
barplot(table(kobe_streak))  	