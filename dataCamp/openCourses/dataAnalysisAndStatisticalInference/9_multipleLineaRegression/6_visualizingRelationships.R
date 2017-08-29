# Visualizing relationships

#######################################################################################################################
#			
#	Next, you will do some more analysis of the provided variables with the help of visualizations. You'll do this 
#	with the help of a scatterplot, a side-by-side boxplot and a mosaic plot.
#			
#######################################################################################################################

# Create a scatterplot for age vs bty_avg:
plot(x = evals$age, y = evals$bty_avg)

# Create a boxplot for age and gender:
boxplot(evals$age ~ evals$gender)

# Create a mosaic plot for rank and gender:
mosaicplot(table(evals$rank, evals$gender))