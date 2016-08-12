# A first distribution analysis

#######################################################################################################################
#	
#	The names() function tells us there are quite a few variables in the data set, enough to do a very in-depth 
#	analysis. For this lab, we'll restrict our attention to just two of the variables: the above ground living 
#	area of the house in square feet (Gr.Liv.Area) and the sale price (SalePrice).
#	
#	To save some effort throughout the lab, you'll create two objects area and price to store these variables.
#	These will be available in every exercise of this lab if they are required.
#	
#######################################################################################################################

# The ames data frame is already loaded into the workspace.
# Assign the variables:
area <- ames$Gr.Liv.Area
price <- ames$SalePrice

# Calculate the summary and draw a histogram of area
summary(area)
hist(x=area, plot=TRUE)