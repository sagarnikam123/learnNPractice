# Operations with other types

#######################################################################################################################
#
#   Filip mentioned that different types behave differently in Python.
#
#   When you sum two strings, for example, you'll get different behavior than
#   when you sum two integers or two booleans.
#
#   In the script some variables with different types have already been created. It's up to you to use them.
#
######################################################################################################################

# Several variables to experiment with
savings = 100
factor = 1.1
desc = "compound interest"

# Assign product of factor and savings to year1
year1 = savings * factor

# Print the type of year1
print(type(year1))

# Assign sum of desc and desc to doubledesc
doubledesc = desc + desc

# Print out doubledesc
print(doubledesc)
