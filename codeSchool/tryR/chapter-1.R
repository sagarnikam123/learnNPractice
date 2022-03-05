#####################################
#	Getting Started with / Trying R	#
#####################################


#Chapter-1
# CheatSheet:- http://cran.r-project.org/doc/contrib/Short-refcard.pdf
	# http://www.amaynard.ca/computing/R_Cheatsheet.pdf

# -cover basic R expressions.
# how to create variables,how to assign/store values in variables and accessing variables
# how to call functions
# how to run pre-made R scripts
# how to access R's help


# 1- Expressions
	# Type anything at the prompt and hit enter, R will evaluate it and print the answer

	> "Getting Started with R" #String
	[1] "Getting Started with R"
	> 1+1 #Adding numbers
	[1] 2
	> 5*10  # Multiplying Numbers
	[1] 50
	> 100/5 #Dividing Numbers
	[1] 20
	sin(3.14159) # sin(Pi radians) is zero
	sin(pi)

# 2- Logical Values
	# Some expressions return a "logical value": TRUE or FALSE,described as "boolean" values

	> 29 > 5
	[1] TRUE
	> 4 + 4 == 8 # ( note that you need a double-equals sign to check whether two values are equal )
	[1] TRUE
	> T == TRUE
	[1] TRUE

# 3 - Variables
	# store values into a variable and access it later
	# typing a variable evaluates it, or you can use print(x).
	x = 34 # using assignment operator
	y <- 28 # second way of assignment
	x/17  # accessing variables
	y+2
	y <- 2*x^2  # Evaluate expression for each element in x
	x = "Trendwise Analytics" # re-assign any value to a variable at any time
	x # Typing the name of a variable evaluates it
	y =FALSE
	print(y) # view value using "print" function



# 4 -Functions
	# using pre-defined functins
	# call a function by typing its name, followed by one or more arguments to that function in parenthesis

	# if u r working on RStudio IDE,
	# then function name and press "Ctrl+Spacebar",
	# a short help panel will apper,
	# if want much extended help press "F1" button

	sum(1 , 4 , 5 ) # Addition using "sum" function
	rep ("Yes I Can !",3)  # repeating String for three times
	sqrt(64) # Square root
	substr("California",5,10) # Extracting substring



# 5 -Help
	# help(functionname) shows help for the given function.
	help.start()              # Load HTML help pages into browser
	help(package)             # List help page for "package"
	?package                  # Shortform for "help(package)"
	help.search("keyword")    # Search help pages for "keyword"
	?help                     # For more options
	help(package=base)        # List tasks in package "base"
	q()                       # Quit R
	help(sum) # Help about "sum" function, # to go back to command prompt press button 'q'
	?min
	??substr # search Help Pages by matching function name

# 6 -Examples & demos
	# example(functionname) # examples of usage for the given function

	example(rep)
	example(plot) # opens separate window for plot, R-Graphics (if you are working on command prompt)
	?demo
	demo() # gives list of available demos in perticular package
	demo(lm.glm, package = "stats", ask = TRUE)
	demo(graphics)




#7 -Files
	# R commands can also be written in plain text files (with a ".R" extension, by convention) for executing later.
	# You can run them directly from the command line, or from within a running R instance.

	list.files() # list the files in the current directory
	dir() # list directory
	source("FirstTest_Script.R") # Loads R commands from a file


# 8 -Packages
	# Some extra packages are not loaded by default, but can be loaded as follows:
	library("package")
	library()                 # List available packages to load
	detach("package:pkg")     # Unload the loaded package "pkg"
	library(help="package")   # list package contents


# 9 -General/others
	# Commands can be separated by a semicolon (;) or a newline
	# All characters after # are treated as comments (even on the same line as commands)
	# Typing the name of a function lists its contents;
	# Commands are entered interactively at the R user prompt. Up and down arrow keys scroll through your command history.
	# Editors:- R, RStudio,

# 10- Quitting & Saving History
	q() # quit R. You will be prompted to save the workspace image,
	# if you specify yes (y), it writes out two files to the current directory,
	# called .RData (saved session i.e. all the R objects in memory)  and .Rhistory (is a list of all the command history as simple text file


	# work with your previous commands
	history() # display last 25 commands
	history(max.show=Inf) # display all previous commands

	# Saving history of commands
	savehistory(file="myCurrent.Rhistory")
	loadhistory(file="myCurrent.Rhistory")     # load history file into current R session


# 11- Saving & loading R objects
	save writes an external representation of R objects to the specified file; these can then be loaded back into R using load, e.g.
	a <- 1:10; b <- a^2
	save(a,b,file="mydata.RData")
	rm(a,b)                        # Remove / delete objects
	remove(a,b)
	load("mydata.RData")           # Load data into R
	tmp <- load("mydata.RData")
	tmp                            # Lists names of objects in file
	[1] "a" "b"

	#Dealing with objects
	# lists the objects currently defined
	ls()
	objects ()
	# apropos finds objects with names containing the specified string, e.g.
	apropos("max")
	[1] "cummax"    "max"       "max.col"   "pmax"      "pmax.int"  "promax"
	[7] "varimax"   "which.max"

# 12- Workspace
	# Workspace is your current R working environment and includes any user-defined objects (vectors, matrices, data frames, lists, functions).
	# At the end of an R session, the user can save an image of the current workspace that is automatically reloaded the next time R is started.
	# keeping different projects in different physical directories as

	getwd() # print the current working directory - cwd
	ls()    # list the objects in the current workspace

	setwd(mydirectory)      # change to mydirectory
	setwd("c:/docs/mydir")  # note / instead of \ in windows , because R sees "\" as an escape character
	setwd("/home/trendwise/Desktop/Learn/R") # on linux

	# view and set options for the session
	help(options) # learn about available options
	options() # view current option settings
	options(digits=3) # number of digits to print on output

	# save the workspace to the file .RData in the cwd
	save.image()

	# save specific objects to a file
	# if you don't specify the path, the cwd is assumed
	save(object list,file="myfile.RData")

# Build-in Datasets
	data() # gives list of buildin datasets
	data(phones)
	# e.g. data(datasetName, package="pkgname")
	data(Cars93, package="MASS")
	data(ToothGrowth)
	?ToothGrowth
	ToothGrowth
	summary(ToothGrowth)
	plot(ToothGrowth)
