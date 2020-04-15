# We extract the population like this:
p <- murders$population

# This is how we do the same with the square brackets:
o <- murders[["population"]]

# We can confirm these two are the same
identical(o, p)

# Use square brackets to extract `abb` from `murders` and assign it to b
b <- murders[['abb']]
# Check if `a` and `b` are identical
identical(a, b)
