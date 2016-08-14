# Sorting

#################################################################################################################
#																												
#	Making and creating rankings is one of mankind's favorite affairs. These rankings can be useful 			
#	(best universities in the world), entertaining (most influencial moviestars) or pointless 					
#	(best 007 look-a-like) Up to you for which purpose you want to use your R skills ;-).						
#																												
#	In data analysis you will sort your data according to a certain variable in the data set. 					
#	In R, this is done with the help of the function order().													
#																												
#	order() is a function that gives you the ranked position of each element when it is applied on a variable,	
#	such as a vector for example. Let us look at the vector a: a <- c(100,9,101).								
#																												
#	order(a)																									
#																												
#	returns the vector {2, 1, 3} since 100 is the second largest element of the vector,							
#	9 is the smallest element and 101 is the largest element.													
#																												
#	a[order(a)]																									
#																												
#	will thus give you the ordered vector {9, 100, 101}, since it first picks the second element of a, then the	 
#	first and then the last. Got it? If you are not sure, use the console to play with the order() function.	
#																												
#################################################################################################################

# Just play around with the order function in the console to see how it works!
piku <- c(10,2738,3,45,568)
piku[order(piku)]
