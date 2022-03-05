# What's a data frame?

#####################################################################################################################
#
#	You may remember from the chapter about matrices that all the elements that you put in a matrix should be of
#	the same type. Back then, your data set on Star Wars only contained numeric elements.
#
#	When doing a market research survey, however, you often have questions such as:
#
#	    'Are your married?' or 'yes/no' questions (= boolean data type)
#	    'How old are you?' (= numeric data type)
#	    'What is your opinion on this product?' or other 'open-ended' questions (= character data type)
#	    …
#
#	The output, namely the respondents' answers to the questions formulated above, is a data set of
#	different data types. You will often find yourself working with data sets that contain different
#	data types instead of only one.
#
#	A data frame has the variables of a data set as columns and the observations as rows. This will be a familiar
#	concept for those coming from different statistical software packages such as SAS or SPSS.
#
#####################################################################################################################

mtcars # Built-in R data set stored in a data frame
