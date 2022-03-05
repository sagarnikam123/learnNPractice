# Compare matrices

#####################################################################################################################
#
#	R's ability to deal with different data structures for comparisons does not stop at vectors.
#	You'll see that it is straightforward to use matrices together with relational operators!
#
#	Instead of in vectors (as in the previous exercise), the LinkedIn and Facebook data is now contained in a
#	matrix called views. The first row contains the LinkedIn information; the second row the Facebook information.
#	The original vectors facebook and linkedin are still available as well.
#
#####################################################################################################################

# The social data has been created for you
linkedin <- c(16, 9, 13, 5, 2, 17, 14)
facebook <- c(17, 7, 5, 16, 8, 13, 14)
views <- matrix(c(linkedin, facebook), nrow = 2, byrow = TRUE)

# When does views equal 13?
views ==13

# When is views less than or equal to 14?
views <= 14

# How often does facebook equal or exceed linkedin times two?
sum(facebook >= (2*linkedin))
