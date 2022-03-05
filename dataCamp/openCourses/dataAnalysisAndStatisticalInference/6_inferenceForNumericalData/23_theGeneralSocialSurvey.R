# The General Social Survey

#######################################################################################################################
#
#	The General Social Survey (GSS) is a sociological survey used to collect data on demographic characteristics
#	and attitudes of residents of the United States. The survey asks many questions, two of which we will focus on
#	for the next few exercises: wordsum (vocabulary test scores) and class (self-reported social class).
#
#	wordsum ranges between 0 and 10, and is calculated as the number of vocabulary questions (out of 10) that the
#	respondent answered correctly.
#
#######################################################################################################################

# Load the gss data frame:
load(url("http://assets.datacamp.com/course/dasi/gss.Rdata"))

names(gss)
head(gss$wordsum)
head(gss$class)
