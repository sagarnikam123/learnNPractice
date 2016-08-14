# Quick, have a look at your data set

#####################################################################################################################
#																													
#	Wow, that is a lot of cars!																						
#																													
#	Working with large data sets is not uncommon in data analysis. When you work with (extremely) large data sets	 
#	and data frames, your first task as a data analyst is to develop a clear understanding of its 					
#	structure and main elements. Therefore, it is often useful to show only a small part of the entire data set.	
#																													
#	So how to do this in R? Well, the function head() enables you to show the first observations 					
#	of a data frame(or any R object you pass to it).																
#	Unoriginally, the function tail() prints out the last observations in your data set.							
#																													
#	Both head() and tail() print a top line called the 'header',													
#	which contains the names of the different variables in your data set.											
#																													
#####################################################################################################################

# Have a quick look at your data
head(mtcars)
