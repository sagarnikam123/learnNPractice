# Question 8

#######################################################################################################################
#
#	Now, a non-inference task: Determine the age cutoff for younger and mature mothers. Use a method of your choice.
#
#	What is the maximum age of a younger mom and the minimum age of a mature mom, according to the data?
#
######################################################################################################################

1	The maximum age of younger moms is 32 and minimum age of mature moms is 33
2	The maximum age of younger moms is 33 and minimum age of mature moms is 34
3	The maximum age of younger moms is 34 and minimum age of mature moms is 35
4	The maximum age of younger moms is 35 and minimum age of mature moms is 36

max(nc$mage[nc$mature=="younger mom"])
min(nc$mage[nc$mature=="mature mom"])

Answer - 3	The maximum age of younger moms is 34 and minimum age of mature moms is 35
