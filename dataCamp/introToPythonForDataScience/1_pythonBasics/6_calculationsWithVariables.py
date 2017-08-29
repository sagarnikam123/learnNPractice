# Calculations with variables

#######################################################################################################################
#
#   Remember how you calculated the money you ended up with after 7 years of investing $100?
#   You did something like this:
#
#   100 * 1.10 ** 7
#
#   Instead of calculating with the actual values, you can use variables instead. The savings variable you've
#   created in the previous exercise represents the $100 you started with. It's up to you to create a new variable
#   to represent 1.10 and then redo the calculations!
#
######################################################################################################################

# Create a variable savings
savings = 100

# Create a variable factor
factor = 1.10

# Calculate result
result = savings * factor ** 7

# Print out result
print(result)
