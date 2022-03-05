# Customize further: else if

#####################################################################################################################
#
#	The else if statement allows to further customize your control structure.
#	You can add as many else if statements as you like. Keep in mind that R ignores the remainder of the control
#	structure once a condition has been found that is TRUE and the corresponding expressions have been executed.
#	Here's an overview of the syntax to freshen your memory:
#
#	if(condition1) {
#	  expr1
#	} else if(condition2) {
#	  expr2
#	} else if(condition3) {
#	  expr3
#	} else {
#	  expr4
#	}
#
#####################################################################################################################

# Variables related to your last day of recordings
medium <- "Facebook"
num_views <- 12

# Control structure for medium
if(medium == "LinkedIn") {
  print("Showing LinkedIn information")
} else if (medium == "Facebook"){
  print("Showing Facebook information");
} else {
  print("Unknown medium")
}

# Control structure for num_views
if(num_views > 15) {
  print("You're popular!")
} else if (num_views > 10 & num_views <=15){
  print("Your number of views is average")
}else {
  print("Try to be more visible!")
}
