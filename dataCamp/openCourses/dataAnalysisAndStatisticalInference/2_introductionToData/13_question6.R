# Question 6

#######################################################################################################################
#
#	Compute the relative frequency distribution of genhlth. cdc is available in the workspace.
#
#	What proportion of the sample reports being in excellent health? Choose the closest answer.
#	Remember there are 20000 observations in the sample!
#
#######################################################################################################################

1	0.15
2	0.23
3	0.30
4	0.51

Answer - 2	0.23

table(cdc$genhlth)/dim(cdc)[1]
