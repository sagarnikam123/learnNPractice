# Cleaning your data

#######################################################################################################################
#	
#	Since we have some missing data on weight gain, we'll first create a cleaned-up version of the weight gain 
#	variable, and use this variable in the next few steps of the analysis.
#	
#	There are many ways of accomplishing this task in R, we'll do it using the na.omit() function. 
#	The command na.omit(a_data_set) returns a_data_set stripped of its (possible) NA values.
#	
#	We'll also store the sample size of the clean data set (which should be less than 1000 since we dropped the 
#	observations with NAs) in order to be able to use this value in the next few steps of the analysis as well.
#	
######################################################################################################################

# Create a clean version fo your data set:
gained_clean <- na.omit(nc$gained)

# Set n to the length of gained_clean:
n <- length(gained_clean)
