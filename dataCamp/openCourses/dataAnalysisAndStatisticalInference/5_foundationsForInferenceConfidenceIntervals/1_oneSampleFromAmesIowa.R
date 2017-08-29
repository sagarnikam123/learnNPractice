# One sample from Ames, Iowa

#######################################################################################################################
#	
#	Welcome to Part B! In this part, we'll translate that concept of reliability of mean estimates into something 
#	more tangible: confidence intervals.
#	
#	If you have access to data on an entire population, say the size of every house in Ames, Iowa, it's straight 
#	forward to answer questions like, “How big is the typical house in Ames?” and “How much variation is there in 
#	sizes of houses?”. If you have access to only a sample of the population, as is often the case,
#	the task becomes more complicated.
#	
#	What is your best guess for the typical size if you only know the sizes of several dozen houses? This sort of 
#	situation requires that you use your sample to make inference on what your population looks like.
#	
#	In this second part of the lab we'll start with a simple random sample of size 60 from the population. 
#	Specifically, this is a simple random sample of size 60. Note that the data set has information on many 
#	housing variables, but for the first portion of the lab we'll focus on the size of the house, 
#	represented by the variable Gr.Liv.Area.
#	
######################################################################################################################

# Take a sample of size 60 of the population:
population <- ames$Gr.Liv.Area
samp <- sample(population, size = 60)

# Calculate the mean:
sample_mean <- mean(samp)

# Draw a histogram:
hist(samp)
