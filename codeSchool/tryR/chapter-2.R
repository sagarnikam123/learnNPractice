#################
#	Chapter-2	#
#################


# - basics of manipulating vectors - creating and accessing them, doing math with them, and making sequences. 
# - how to make bar plots and scatter plots with vectors. 
# - how R treats vectors where one or more values are not available


# Data structures in R
# All R objects have a type or mode, as well as a class, which can be determined with typeof, mode & class.
# 1- Vectors & its Access
	# Vector is a basic structure,it is list of values
	#  in the following atomic modes (data types):
    # numeric, integer, character, logical, complex, raw
	# A vector's values can be numbers, strings, logical values, or any other type, as long as they're all the same type

	c(12,39,45) 	# "c" function (c is short for Combine) creates a new vector by combining/concanating a list of values.
	c('a','b','c')
	a = c(1, 2, 3, 4)
	# Basic Arithmetic Operations
	a+5 
	a - 10
	a/5
	b <- a - 10
	exp(a)
	log(a)
	sin(a)
	a^2 # squre
	a*b # multiplication
	#Basic Statistics
	min(a,b)
	max(a,b)
	mean(a) 
	median(a)
	quantile(a)
	var(a)
	sd(b)

	# Vectors cannot hold values with different modes (types)
	# All the values were converted to a single mode (characters) so that the vector can hold them all.
	> c(22,"Trying ...R",'z')
	[1] "22"          "Trying ...R" "z"
	
	#Accessing:- retrieve an individual value within a vector by providing its numeric index in square brackets.
	> alphaList <- c('a','b','c','d','e','f')
	> alphaList
	[1] "a" "b" "c" "d" "e" "f"
	> str(alphaList)  # internal structure of alphaList
	chr [1:6] "a" "b" "c" "d" "e" "f"
	mode(alphaList) #view storage mode of object passed i.e. alphaList
	> # Many languages start array indices at 0, but R's vector indices start at 1
	> alphaList[1]
	[1] "a"
	> alphaList[2:5]
	[1] "b" "c" "d" "e"
	> #assign new values within an existing vector
	> alphaList[1] <- 'FirstElement'
	> alphaList
	[1] "FirstElement" "b"            "c"            "d"            "e"           
	[6] "f"           
	> alphaList[7] = "Seventh Element"   
	> alphaList
	[1] "FirstElement"    "b"               "c"               "d"              
	[5] "e"               "f"               "Seventh Element"

	> line= c ('one','two','three','four','five','six')
	> line
	[1] "one"   "two"   "three" "four"  "five"  "six"  
	> line[2:6] # retrieve ranges of values
	[1] "two"   "three" "four"  "five"  "six"  
	> line[c(1,3)]# You can use a vector within the square brackets to access multiple values
	[1] "one"   "three"
	> line[5:6] <- c("Fifth-5","Sixth-6") # set ranges of values; just provide the values in a vector.
	> line
	[1] "one"     "two"     "three"   "four"    "Fifth-5" "Sixth-6"
	
	
	
	# Assigning names to a vector's elements (can be used as labels for your data.)
	# by passing a second vector filled with names to the names assignment function
	numbers<- c(1,2,3,4,5)
	names(numbers)<-c('one','two','three','four','five')
	numbers
	# You can also use the names to access the vector's values
	numbers['four']    
	


# 2- Sequence Vectors
	#vector with a sequence of numbers, with start:end notation
	3:8
	seq(40,47,by=1)  # using seq function
	seq(1,4,by =0.5) # you can increments elements in seq other than 1
	20:15 # reverse vector
	
	
	
# 3- Plotting One Vector
	# barplot function draws a bar chart with a vector's values.	
	plotValues <- c(4, 5, 1)
	barplot(plotValues)
	names(plotValues) <- c("ShriLanka", "Australia", "India")
	barplot(plotValues)
	barplot(1:20)

# 4- Vector Math
	# If you add a scalar (a single value) to a vector,
	# the scalar will be added to each value in the vector, returning a new vector with the results.
	a <- c(1, 2, 3)
	a + 1 #addition
	a / 2 # division
	a * 2 #Multiplication
		# If you add two vectors, R will take each value from each vector and add them
	b <- c(4, 5, 6)
	a + b
	a - b

	#Compairing two vectors
	a == c(1, 99, 3)
	# Notice that R didn't test whether the whole vectors were equal; it checked each value in the a vector against the value at the same index in our new vector.
	sin(a) # Trignometric function


# 5- Scatter Plots
	# takes two vectors, one for X values and one for Y values, and draws a graph of them.
	x <- seq(1, 20, 0.1)
	y <- sin(x)
	 plot(x, y) #  first argument (x) are used for the horizontal axis, and values from the second (y) for the vertical.
	 values <- -10:10
	absolutes <- abs(values)
	plot(values, absolutes)




# 6 -NA Values (dealing with Missing Data)
	# when working with sample data, a given value isn't available
	# R explicitly indicates value as 'NA' if sample was not available
	a <- c(1, 3, NA, 7, 9)
	is.na(a) # returns FALSE FALSE  TRUE FALSE FALSE
	sum(a)
	# We can explicitly tell sum (and many other functions) to remove NA values before they do their calculations, 
	sum(a, na.rm = TRUE)
	mean(a,na.rm=T)
	newA = na.omit(a) # Handle Missing Values in Objects
	na.exclude(a)
	




# 7- Histogram
	# First, generate a set of 10,000 Gaussian distributed random numbers
	data <- rnorm(1e4)  # Gaussian distributed numbers with mean=0 & sigma=1
	hist(data)          # Plots a histogram, with sensible bin choices by default
	hist(data, breaks=7)

# 8 -Plotting
	?plot           # Help page for plot command
	?par            # Help page for graphics parameter control
	?Devices        # or "?device"
	# (R can output in postscript, PDF, bitmap, PNG, JPEG and more formats)
	dev.list()      # list graphics devices
	colours()       # or "colors()" List all available colours
	?plotmath  

	# To create an output file copy of a plot for printing or including in a document etc.

# 9- Functions
	cat            # Type function name without brackets to list contents
	args(cat)      # Return arguments of any function
	body(cat)      # Return main body of function
	formals(fun)   # Get or set the formal arguments of a function
	debug(fun); undebug(fun)   # Set or unset the debugging flag on a function
	
	# 	Create your own function
	fun <- function(x, a, b, c) (a*x^2) + (b*x^2) + c
	fun(3, 1, 2, 3)
	fun(5, 1, 2, 3)


	# A more complicated example of a function. First, create some data:
	set.seed(123)                    # allow reproducible random numbers
	a <- rnorm(1000, mean=10, sd=1)  # 1000 Gaussian random numbers
	b <- rnorm(100, mean=50, sd=15)  # smaller population of higher numbers
	x <- c(a, b)                     # Combine datasets
	hist(x)                          # Shows outlier population clearly
	sd(x)                            # Strongly biased by outliers
	mad(x)                           # Robustly estimates sd of main sample
	mean(x)                          # biased
	median(x)                        # robust
	
# 10- Simple Graphs


	# Dot Plots
	# Simple Dotplot
	dotchart(mtcars$mpg,labels=row.names(mtcars),cex=.7,main="Gas Milage for Car Models", xlab="Miles Per Gallon")
	
	# Dotplot: Grouped Sorted and Colored
	# Sort by mpg, group and color by cylinder 
	x <- mtcars[order(mtcars$mpg),] # sort by mpg
	x$cyl <- factor(x$cyl) # it must be a factor
	x$color[x$cyl==4] <- "red"
	x$color[x$cyl==6] <- "blue"
	x$color[x$cyl==8] <- "darkgreen"	
	dotchart(x$mpg,labels=row.names(x),cex=.7,groups= x$cyl,main="Gas Milage for Car Models\ngrouped by cylinder", xlab="Miles Per Gallon", gcolor="black", color=x$color)
	

	# Bar Plots
	# Simple Bar Plot 
	counts <- table(mtcars$gear)
	barplot(counts, main="Car Distribution",xlab="Number of Gears")
	
	# Stacked Bar Plot with Colors and Legend
	counts <- table(mtcars$vs, mtcars$gear)
	barplot(counts, main="Car Distribution by Gears and VS", xlab="Number of Gears", col=c("darkblue","red"),legend = rownames(counts))
	
	# Grouped Bar Plot
	counts <- table(mtcars$vs, mtcars$gear)
	barplot(counts, main="Car Distribution by Gears and VS", xlab="Number of Gears", col=c("darkblue","red"),legend = rownames(counts), beside=TRUE)
	
	# Line Graphs
	# Define the cars vector with 5 values
	cars <- c(1, 3, 6, 4, 9) #
	trucks <- c(2, 5, 4, 5, 12)
	# Graph the cars vector with all defaults
	plot(cars)
	# Graph cars using blue points overlayed by a line 
	plot(cars, type="o", col="blue")
	# Create a title with a red, bold/italic font
	title(main="Autos", col.main="red", font.main=4)
	# Graph trucks with red dashed line and square points
	lines(trucks, type="o", pch=22, lty=2, col="red")
	
	# Create a title with a red, bold/italic font
	title(main="Autos", col.main="red", font.main=4)
	# Start PNG device driver to save output to figure.png
	png(filename="LinePlot.png", height=295, width=300,bg="white")
	#More Advanced Line Graphs
	x <- c(1:5); y <- x # create some data 
	par(pch=22, col="red") # plotting symbol and color 
	par(mfrow=c(2,4)) # all plots on one page 
	opts = c("p","l","o","b","c","s","S","h") 
	for(i in 1:length(opts)){ 
	  heading = paste("type=",opts[i]) 
	  plot(x, y, type="n", main=heading) 
	  lines(x, y, type=opts[i]) 
	}
	

	#Pie chart
	# Pie Chart with Percentages
	slices <- c(10, 12, 4, 16, 8) 
	lbls <- c("US", "UK", "Australia", "Germany", "France")
	pct <- round(slices/sum(slices)*100)
	lbls <- paste(lbls, pct) # add percents to labels 
	lbls <- paste(lbls,"%",sep="") # ad % to labels 
	pie(slices,labels = lbls, col=rainbow(length(lbls)),main="Pie Chart of Countries")


	#Box plots
	# Boxplots can be created for individual variables or for variables by group. 
	# Boxplot of MPG by Car Cylinders 
	boxplot(mpg~cyl,data=mtcars, main="Car Milage Data",xlab="Number of Cylinders", ylab="Miles Per Gallon")
	
	# Notched Boxplot of Tooth Growth Against 2 Crossed Factors
	# boxes colored for ease of interpretation 
	boxplot(len~supp*dose, data=ToothGrowth, notch=TRUE, col=(c("gold","darkgreen")),main="Tooth Growth", xlab="Suppliment and Dose")
	
	
	# Histograms
	# Colored Histogram with Different Number of Bins
	hist(mtcars$mpg, breaks=12, col="red")
	
	# Add a Normal Curve (Thanks to Peter Dalgaard)
	x <- mtcars$mpg 
	h<-hist(x, breaks=10, col="red", xlab="Miles Per Gallon", 
		 main="Histogram with Normal Curve") 
	xfit<-seq(min(x),max(x),length=40) 
	yfit<-dnorm(xfit,mean=mean(x),sd=sd(x)) 
	yfit <- yfit*diff(h$mids[1:2])*length(x) 
	lines(xfit, yfit, col="blue", lwd=2)

	# Scatterplots
	# Simple Scatterplot
	attach(mtcars)
	plot(wt, mpg, main="Scatterplot Example",xlab="Car Weight ", ylab="Miles Per Gallon ", pch=19)
	# Add fit lines
	abline(lm(mpg~wt), col="red") # regression line (y~x) 
	lines(lowess(wt,mpg), col="blue") # lowess line (x,y)

