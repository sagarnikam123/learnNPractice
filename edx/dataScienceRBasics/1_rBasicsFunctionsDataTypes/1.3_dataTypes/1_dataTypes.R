# checking type of object
a <- 2
class(a)
class(ls)

# data.frame
library(dslabs)
data("murders")
force(murders)
View(murders)
class(murders)

# structure of data frame
str(murders)

# first 6 lines
head(murders)

#accessing column (using $ - the accessor)
murders$population

#names of column
names(murders)
class(murders$population)

# length of numeric vector
pop <- murders$population
length(pop)
class(pop)

# Character vector
a <- 1
a
'a'
class(a)
class("a")
class(murders$state)

# Logcial vectors
z <- 3 == 2
z
class(z)

# Factor (useful for storing categorial data)
class(murders$region)
levels(murders$region)
