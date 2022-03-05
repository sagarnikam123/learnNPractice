# A first analysis

#######################################################################################################################
#
#	As a first step in the analysis, you should consider summaries of the data.
#	This can be done using the summary command.
#
#	The variable summaries tell you which variables are categorical and which are numerical.
#	Think about the types of the variables. If you aren't sure or want to take a closer look at the data, make a graph.
#
#	We will first start with analyzing the weight gained by mothers throughout the pregnancy: gained.
#
######################################################################################################################

# Compute summaries of the data:
summary(nc)
summary(nc$gained)

# Use visualization and summary statistics to view the data for gained:
hist(nc$gained, plot=TRUE)
boxplot(nc$gained)
