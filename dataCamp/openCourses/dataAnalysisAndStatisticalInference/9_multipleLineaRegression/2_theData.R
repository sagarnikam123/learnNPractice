# The data

#######################################################################################################################
#
#	The data were gathered from end of semester student evaluations for a large sample of professors from the
#	University of Texas at Austin. In addition, six students rated the professors' physical appearance.†
#
#	The result is a data frame where each row contains a different course and columns represent variables about the
#	courses and professors.
#
#	You can have a look at the different variables in the data frame, and their meaning here
#	(http://assets.datacamp.com/course/dasi/evals_variables.html). As you'll be needing
#	this list for reference throughout the lab, it's best to keep it open in a tab.
#
#	† This is a slightly modified version of the original data set that was released as part of the replication data
#	for Data Analysis Using Regression and Multilevel/Hierarchical Models (Gelman and Hill, 2007).
#
#######################################################################################################################

# Load in the evals data set with the help of the provided function.
load(url("http://assets.datacamp.com/course/dasi/evals.RData"))

names(evals)
