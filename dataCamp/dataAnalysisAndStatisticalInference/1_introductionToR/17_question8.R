#

#######################################################################################################################
#
#	Calculate the absolute differences between number of boys and girls born in each year; which year out of the 
#	present data had the biggest absolute difference in the number of girls and number of boys born? present is 
#	loaded in the workspace so you can start right away.
#
#######################################################################################################################

1	1963
2	1946
3	2002
4	1940

present[which.max(present$boys - present$girls),1 ]

Answer - 1	1963




