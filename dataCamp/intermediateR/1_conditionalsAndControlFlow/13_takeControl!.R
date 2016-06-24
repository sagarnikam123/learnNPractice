# Take control!

#####################################################################################################################
#																													#
#	Nothing new is introduced in this exercise; just try to combine everything that you've learned so far.			#
#	Going from relational operators, over logical operators to control constructs: you'll need them all!			#
#																													#
#	In the editor, we've coded two values beforehand: li and fb, denoting the number of profile views your 			#
#	LinkedIn and Facebook profile had on the last days of recordings. Go through the instructions to create R code	#
#	that generates a 'social media score', sms, based on the values of li and fb.									#
#																													#
#####################################################################################################################

# Variables related to your last day of recordings
li <- 15
fb <- 9

sms <- 0;

# Code the control-flow construct
if(li >= 15 & fb >= 15){
    sms <- 2 * (li+fb)
}else if(li < 10 & fb < 10){
    sms <- 1/2(li+fb)
}else{
    sms <- (li+fb)
}

# Print the resulting sms to the console
print(sms)

