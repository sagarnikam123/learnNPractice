# Turning info into knowledge - Numerical data

#######################################################################################################################
#
#	Some define Statistics as the field that focuses on turning information into knowledge. The first step in that
#	process is to summarize and describe the raw information - the data.
#
#	The BRFSS questionnaire is a massive trove of information. A good first step in any analysis is to distill all of
#	that information into a few summary statistics and graphics. Let's start with a numerical summary.
#
#	You can use functions mean, var and median to calculate the (surprise, surprise) mean, variance and median of
#	certain variables of your data frame.
#
#	The function summary() returns a numerical summary: minimum, first quartile, median, mean,
#	third quartile, and maximum.
#
#######################################################################################################################

mean(cdc$weight)
var(cdc$weight)
median(cdc$weight)

summary(cdc$weight)
