# Compare vectors

#####################################################################################################################
#																													
#	You are already aware that R is a master at handling vectors.													
#	Without having to change anything about the syntax, R's relational operators also work on vectors.				
#																													
#	Let's go back to the example that was started in the video. You want to figure out whether your marketing 		
#	efforts, funny tweets and facebook posts have increased your visibility on various social media platforms,		
#	more specifically LinkedIn and Facebook. The sample code in the editor intializes 								
#	the vectors linkedin and facebook. Each of the vector contains the number of profile views of your LinkedIn and	
#	Facebook profiles in the last seven days.																		
#																													
#####################################################################################################################

# The linkedin and facebook vectors have already been created for you
linkedin <- c(16, 9, 13, 5, 2, 17, 14)
facebook <- c(17, 7, 5, 16, 8, 13, 14)

# Popular days
linkedin > 15


# Quiet days
linkedin <= 5

# LinkedIn more popular than Facebook
linkedin > facebook
