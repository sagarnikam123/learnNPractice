# Gendermale

#######################################################################################################################
#			
#	Note that the estimate for gender is called gendermale in your summary output. You'll see this name change 
#	whenever you introduce a categorical variable. The reason is that R recodes gender from having the values of 
#	female and male to being an indicator variable called gendermale that takes a value of 0 for females and a value 
#	of 1 for males. (Such variables are often referred to as 'dummy' variables.)
#	
#	As a result, for females, the parameter estimate is multiplied by zero, leaving the intercept and slope form
#	familiar from simple regression.
#	scoreˆ=b0+b1×btyavg+b2×(0) =b0+b1×btyavg
#	
#######################################################################################################################

# Your plot:
multiLines(m_bty_gen)