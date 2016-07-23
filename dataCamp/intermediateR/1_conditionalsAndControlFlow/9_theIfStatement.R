# The if statement

#################################################################################################################
#																												#
#	Before diving into some exercises on the if statement, have another look at its syntax:						#
#																												#
#	if(condition) {																								#
#	  expr																										#
#	}																											#
#																												#
#	Remember your vectors with social profile views? Let's look at it from another angle.						#
#	The medium variable gives information about the social website; the num_views variable denotes the actual	#
#	number of views that that particular medium had on the last day of your recordings.							#			
#																												#
#	Both these variables have already been defined in the editor.												#
#																												#
#################################################################################################################

# Variables related to your last day of recordings
medium <- "LinkedIn2"
num_views <- 16

# Examine the if statement for medium
if(medium == "LinkedIn") {
  print("Showing LinkedIn information")
}

# Write the if statement for num_views
if(num_views > 15){
    print("You're popular!");
}
