# Kobe vs. the Independent Shooter

#######################################################################################################################
#
#	With the results of the simulation saved as sim_basket, you have the data you need to compare Kobe to your
#	independent shooter. We can look at Kobe's data alongside our simulated data: kobe$basket vs. sim_basket.
#
#	Both data sets represent the results of 133 shot attempts, each with the same shooting percentage of 45%.
#	We know that our simulated data is from a shooter that has independent shots.
#	That is, we know the simulated shooter does not have a hot hand.
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

# Calculate streak lengths:
kobe_streak <- calc_streak(kobe$basket)
sim_streak <- calc_streak(sim_basket)

# Compute summaries:
summary(kobe_streak)
summary(sim_streak)


# Make bar plots:
kobe_table <- table(kobe_streak)
sim_table <- table(sim_streak)

barplot(kobe_table)
barplot(sim_table)
