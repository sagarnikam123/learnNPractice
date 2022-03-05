# Which variables are you working with?

#######################################################################################################################
#
#	The object cdc is a data matrix, with each row representing a case, and each column representing a variable.
#	R calls this data format a data frame, which is a term that will be used throughout the labs.
#
#	To see what kind of data your data frame contains, you can use the names() function in R. This function
#	returns a vector of variable names in which each name corresponds to a question that was asked in the survey.
#	For example, for genhlth, respondents were asked to evaluate their general health from excellent down to poor.
#	The exerany variable indicates whether the respondent exercised in the past month (1) or did not (0).
#	Likewise, hlthplan indicates whether the respondent had some form of health coverage. The smoke100 variable
#	indicates whether the respondent had smoked at least 100 cigarettes in his lifetime.
#
#######################################################################################################################

# The cdc data frame is already loaded into the workspace

# Print the names of the variables:
names(cdc)
