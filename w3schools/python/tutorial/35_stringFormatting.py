# String Formatting

###############################################################################
# String format()

# Add a placeholder where you want to display the price
price = 49
txt = "The price is {} dollars"
print(txt.format(price))

# Format the price to be displayed as a number with two decimals
txt = "This price is {:.2f} dollars"
###############################################################################
# Multiple Values

quantity = 3
itemno = 567
price = 49
myorder = "I want {} pieces of item number {} for {:.2f} dollars"
print(myorder.format(quantity, itemno, price))

# same value more than once
age = 36
name = "John"
txt = "His name is {1}. {1} is {0} years old."
print(txt.format(age, name))
###############################################################################
# Index Numbers

quantity = 3
itemno = 567
price = 49
myorder = "I want {0} pieces of item number {1} for {2:.2f} dollars"
print(myorder.format(quantity, itemno, price))
###############################################################################
# Named Indexes

myorder = "I have a {carname}, it is a {model}"
print(myorder.format(carname="Ford", model="Mustang"))
###############################################################################
