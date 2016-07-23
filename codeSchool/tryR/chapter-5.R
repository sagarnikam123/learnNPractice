#################
#	Chapter- 5	#
#	Factors		#
#################


# Factors to track categorized values/help you divide your data into groups

# - how to create factors 
# - how to use them to make plots more readable.

# 1 - Creating Factors
#suppose persons in one company
personNames <- c('Gremish','Symons','Simond','Guntoo','Simond','Darek','Churan')
company <- factor(personNames)
print(company)
# Printed at the bottom, you'll see the factor's "levels" - i.e. groups of unique values.
as.integer(company)
levels(company) # only levels

# 2 - Plots With Factors
# using a factor to separate plots into categories
salary <- c(9000, 5000, 12000, 7500, 18000, 10000, 15000);
bonus <- c(800,490,1200,300,1830,1000,1280);
plot(salary, bonus, pch=as.integer(company))

# legend function takes a location to draw in, a vector with label names, and a vector with numeric plot character IDs.
legend("topright", c("gems", "gold", "silver"), pch=1:3)
legend("topright", c("Symons", "Gremish", "Simond"), pch=1:3)

legend("topright", levels(company), pch=1:length(levels(company)))
