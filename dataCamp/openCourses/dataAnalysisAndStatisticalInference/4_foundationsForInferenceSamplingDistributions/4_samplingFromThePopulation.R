# Sampling from the population

#######################################################################################################################
#
#	In this lab we have access to the entire population, but this is rarely the case in real life. Gathering
#	information on an entire population is often extremely costly or impossible. Because of this, we often take a
#	sample of the population and use that to understand the properties of the population.
#
#	If we were interested in estimating the mean living area in Ames based on a sample, we can use the sample()
#	function to sample from the population: sample(area, 50).
#
#	This command collects a simple random sample of size 50 from the vector area. This is like going into the
#	City Assessor's database and pulling up the files on 50 random home sales. If we didn't have access to the
#	population data, working with these 50 files would be considerably simpler than having
#	to go through all 2930 home sales.
#
#######################################################################################################################

# Create the samples:
samp0 <- sample(area, 50)
samp1 <- sample(area, 50)

# Draw the histograms:
hist(samp0)
hist(samp1)
