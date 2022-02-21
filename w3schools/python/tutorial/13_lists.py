# Lists

###############################################################################
# List Comprehension

fruits = ["apple", "banana", "cherry", "kiwi", "mango"]
newlist = []

for x in fruits:
    if 'a' in x:
        newlist.append(x)
print(newlist)

# demo comprehension
newlist = [x for x in fruits if 'a' in x]
print(newlist)

# Syntax
# newlist = [expression for item in iterable if condition == True]

# Only accept items that are not "apple"
print([x for x in fruits if x != 'apple'])

# With no if statement
print([x for x in fruits])

# range() function to create an iterable
print([x for x in range(10)])
print([x for x in range(10) if x < 5])

# Set the values to upper case
print([x.upper() for x in fruits])

# Set all values to 'hello'
print(['hello' for x in fruits])

# Return "orange" instead of "banana"
print([x if x != 'banana' else 'orange' for x in fruits])
###############################################################################
