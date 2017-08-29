# Question 8

#######################################################################################################################
#	
#	How many observations are in the subset under23_and_smoke that you created in the previous exercise, i.e. how 
#	many people in the sample are under the age of 23 and have smoked at least 100 cigarettes in their lifetime?
#	
#	Note: The subset you created is already loaded.
#
#######################################################################################################################

1	620
2	771
3	7,244
4	10,436
5	17,591

dim(subset(cdc, cdc$age < 23 & cdc$smoke100 == 1))[1]

Answer - 1	620