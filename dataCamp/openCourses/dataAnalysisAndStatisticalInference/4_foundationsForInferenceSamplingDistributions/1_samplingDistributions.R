# Sampling distributions

#######################################################################################################################
#
#	Welcome back dear student! In this lab, we'll lay the foundations for statistical inference.
#	You'll learn a lot in this two part lab, but don't be intimidated, perseverance will be rewarded!
#
#	In Part A of this lab, we investigate the ways in which the statistics from a random sample of data can
#	serve as point estimates for population parameters. We're interested in formulating a sampling distribution of
#	our estimate in order to learn about the properties of the estimate, such as its distribution.
#
#	We consider real estate data from the city of Ames, Iowa. The details of every real estate transaction in
#	Ames is recorded by the City Assessor's office. Our particular focus for this lab will be all residential home
#	sales in Ames between 2006 and 2010. This collection represents our population of interest (which is rare
#	to have access to), but we will also work with smaller samples from this population.
#
#######################################################################################################################

# Load the ames data frame:
load(url("http://assets.datacamp.com/course/dasi/ames.RData"))

# Make some preliminary inspections:
names(ames)
head(ames)
tail(ames)
summary(ames)
