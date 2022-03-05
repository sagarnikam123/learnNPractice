# Now: prices!

#######################################################################################################################
#
#	So far, we have only focused on estimating the mean living area in homes in Ames.
#
#	Now let's take off our training wheels and do the same analysis for the sales prices.
#	Don't worry, we'll start off easy!
#
#	Remember from the first exercise that we saved the sales prices in the object price.
#
#######################################################################################################################

# Take a sample of size 50 from price
sample_50 <- sample(price, 50)

# Print the mean
mean(sample_50)
