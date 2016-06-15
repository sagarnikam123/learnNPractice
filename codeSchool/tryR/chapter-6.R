#################
#	Chapter - 6	#
#	Data Frames	#
#################


# like an Excel spreadsheet or database table or . 
# It has columns (contain values of a particular type) and rows (contains sets of related values for each column)
# -how to create and access data frames. 
# -how to load frames in from files
# -how to combine multiple frames together into a new data set.



# 1 - Data Frames
# Lets consider the example of salary and bonus of employees inside a company.
# Employee will salary and bonus


personNames <- c('Gremish','Symons','Simond','Guntoo','Simond','Darek','Churan')
salary <- c(9000, 5000, 12000, 7500, 18000, 10000, 15000);
bonus <- c(800,490,1200,300,1830,1000,1280);

company<-data.frame(personNames,salary,bonus)
print(company)


# 2 - Data Frame Access
	# You can get individual columns by providing their index number in double-brackets

	company[[2]]

	# or By giving column name as a string in double-brackets (with quotes)
	company[["salary"]]

	# or by $ notation: the data frame name, a dollar sign, and the column name (without quotes).
	company$salary

	# getting Person Names
	company[['personNames']]

	# Getting single row
	company[1,]
	
	# printing firest few rows
	# print first/last rows of data
	head(company, n=5)
	tail(company,n=3) 
	A <- data.frame(a=1:3, b=4:6, c=7:9)
	A$a                 # Print the column named "a"
	A[c("a", "c")]      # Print the columns listed in the square brackets
	A[2]                # Print column 2 of A (type=data frame)
	A[[2]]              # Print column 2 of A (type=vector)
	A[,2]               # Print column 2 of A (type=vector)
	A[2,]               # Print row 2 of A
	A[1, ]              # Print the 1st row of data frame A
	A[2:3, ]            # Print rows 2 to 3
	A[, -1]             # Print everything except the 1st column of A
	A[0]                # Print type of object (data frame)
	A[[1]][0]           # (numeric, i.e. vector)
	A[A$a%%2 == 1, ]    # Print rows of A where column "a" has an odd number
	A[A$b<6 & A$c>7, ]  # Print rows of A according to a combination of constraints
	A[A$b<6 | A$c>7, ]  # ("&" = logical AND; "|" = logical OR)
	A$a <- NULL         # Delete a column from a data frame
	# To retrieve a named column, where the column name is itself a variable:
	name <- "b"
	A[name]             # Produces a data frame
	A[[name]]           # Produces a vector

	# Summary statistics
	summary(company)
	summary(company)





# 3 - Loading Data Frames
	# every time typing data and loading into data frame is tedious,
	# so we have csv(Comma Separated Values) format file having varialbes/fields as AuthID,bookName,AuthFN,AuthLN
	# You can load a CSV file's content into a data frame by passing the file name to the read.csv function
	# checking field names indicated by header argument header=T
	list.files()
	read.csv("datasets/books.csv",header=T)

	# "bones.tsv" file has a similar format, but its fields are separated by tab characters
	# For files that use separator strings other than commas, you can use the read.table function. 
	# The sep argument defines the separator character, and you can specify a tab character with "\t".
	# 
	# having fields boneName and No_of_Bones

	read.table("datasets/bones.tsv",sep='\t',header=T)


# 4 - Merging Data Frames
	# The merge function joins two data frames together, using the contents of one or more columns.
	# IT takes arguments with an x frame (area) and a y frame (popuVehicle). 
	# By default, it joins the frames on columns with the same name (Area). 
	area=read.table("datasets/areaInfo.tsv",sep='\t',header=T)
	colnames(area)
	rownames(area) 
	names(area) # another way to access columnnames in data frames
	popuVehicle=read.csv("datasets/popuVehicleInfo.csv",header=T)
	popuVehicle[0]

	merge(x = area, y = popuVehicle)
	mergeData = merge(x = area, y = popuVehicle)

	A <- data.frame(A, B)     # Can also use "cbind(A, B)"
	# Combine R Objects by Rows or Columns
	# To append one data frame below another (instead of side-by-side), use:
	rbind(A, A, A)
	# Note that if column names are specified, they must match in all data.frames for rbind to work:
	rbind(A, B)    # Fails!
	colnames(B) <- colnames(A)  # Use same column names for B as for A
	rbind(A, B)    # Works
	m <- cbind(1, 1:7)
	
	
	
	#	You can use attach(A) and detach(A) to add/remove data frame to/from the current search path, allowing you to use the column names as if they were standalone vectors. However, this approach is usually best avoided, since it can cause confusion if any objects exist with the same name as a column of an attached data frame. It's better to use with to achieve the same effect within a controlled setting:
	#   The with function enables you to work with column names without having to prefix the data frame name, as follows
	A <- data.frame(a=1:20, b=rnorm(20))
	with(A, a^2 + 2*b)

	# This principle is used in the transform function, to allow you to construct new columns in the data frame using references to the other column names:
	transform(A, c=a^2 + 2*b)  # Add new column to data frame
	# Similarly, the subset function works in the same way to enable easy filtering of data frames:
	subset(A, b >= 0 & a%%2 == 0)  # Returns rows with positive b & even numbered a
	# You can also easily perform database join operations, using merge:
	B <- data.frame(a=1:7, x=runif(7))
	merge(A, B)   # Return rows with same "a", combining unique columns from A & B
		
	
	
# 5 -Writing data frames
	write.table(mergeData, quote=F, row.names=F, col.names=T) # shows how data will be written
	write.table(mergeData,file="mergeData.tsv", sep='\t',quote=F, row.names=F, col.names=T)  #writes a tsv file to current folder


# 6 Manipulating data frames
A <- data.frame(a=1:3, b=4:6, c=7:9)
colnames(A)        # List column names for A
rownames(A)        # List row names (will just be numbers if not specified)
	B <- data.frame(d=11:13, e=14:16, f=17:19)
	A + 1              # Perform arithmetic on each element of A
	A * B              # Operates on each element, if A & B have same dimensions
	A[order(A$a, decreasing=T), ] # Sort A according to a specified column
	t(A)               # Transpose A (swap rows for columns & vice versa)

	# NB the type of t(A) is no longer a data frame, but you can make it so:
	as.data.frame(t(A))



# 7 - Saving data
	?save
	save(mergeData, t, file="mergedata.RData")
	load(file="data.RData")    # - this will load the saved R objects into the current session, with
	# the same properties, i.e. all the variable will have the same names
	# and contents

# 8- remvoing dataframes
	detach(company)

