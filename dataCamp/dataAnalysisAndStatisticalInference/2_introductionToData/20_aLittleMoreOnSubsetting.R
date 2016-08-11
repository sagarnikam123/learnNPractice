# A little more on subsetting

#######################################################################################################################
#	
#	It's often useful to extract all individuals (cases) in a data frame that have specific characteristics. 
#	You can accomplish this through conditioning commands.
#	
#	First, consider expressions like cdc$gender == "m" or cdc$age > 30 (try them in the console!). 
#	These commands produce a series of TRUE and FALSE values. There is one value for each respondent,
#	where TRUE indicates that the person was male or older than 30, respectively.
#	
#	Suppose now you want to extract just the data for the men in the sample, or just for those over 30.
#	You can simply use subset to do that. For example, the command
#	
#	subset(cdc, cdc$gender == "m")
#	will return a data frame that only contains the men from the cdc data frame. (Note the double equal sign!)
#	
#######################################################################################################################

# Create the subsets
very_good <- subset(cdc, cdc$genhlth == "very good")
age_gt50 <- subset(cdc, cdc$age > 50)

# Print the subsets
head(very_good)
head(age_gt50)