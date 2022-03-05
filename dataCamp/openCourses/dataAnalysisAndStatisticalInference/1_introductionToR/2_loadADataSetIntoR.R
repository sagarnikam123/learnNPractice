#	Load Data set into R

#######################################################################################################################
#
#	Let's start by reading in the data set. You will work with the present data set:
#	http://assets.datacamp.com/course/dasi/present.txt. The present data set refers to the number of
#	male and female births in the United States. It contains the data for all of the years from 1940 to 2002.
#
#	Use the function read.table() to read in the data. Because you are accessing data from the web,
#	this command (and the entire analysis) will work in a computer lab, in the library, or in your dorm room;
#	anywhere you have access to the Internet.
#	This is of course very powerful when working in a team or on different devices.
#
#######################################################################################################################

# Read in your data set and assign to the object:
present <- read.table("http://assets.datacamp.com/course/dasi/present.txt")

# This will print your data set in the console:
present
