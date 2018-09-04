# Prepare the workspace for preliminary analysis

#######################################################################################################################
#
# During this course, we will examine a data set that comes in the nasaweather package. The data set is called atmos,
# and it contains meteorological data about the western hemisphere.
#
# We'll also use the dplyr package to manipulate our data and the ggvis package to visualize it.
#
# For the next set of exercises, you will use the traditional DataCamp interface: you have an editor where
# you can write and submit R code, as well as a console where you can experiment with R code without doing
# a formal submission.
#
######################################################################################################################

install.packages(c("nasaweather", "dplyr", "ggvis" ))
# Load the nasaweather package
library("nasaweather")

# Load the dplyr package
library("dplyr")

# Load the ggvis package
library("ggvis")

?atmos
