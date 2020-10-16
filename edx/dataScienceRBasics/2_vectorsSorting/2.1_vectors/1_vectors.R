# We may create vectors of class numeric or characer with the concatenate function
codes <- c(380, 124, 818)
country <- c('italy', 'canada', 'egypt')

# We can also name the elements of a numeric vector
# Note that the two lines of code below have the same result
codes <- c(italy = 380, canada = 124, egypt = 818)
codes <- c('italy' = 380, 'canada' = 124, 'egypt' = 818)

# We can also name the elements of a numeric vector using the names() function
codes <- c(380, 124, 818)
country <- c('italy', 'canada', 'egypt')
names(codes) <- country

# Using square brackets is useful for subsetting to access specific elements of a vector
codes[2]
codes[c(1, 3)]
codes[1:2]

# If the entries of a vector are names, they may be accessed by referring to their name
codes['canada']
codes[c('egypt', 'italy')]