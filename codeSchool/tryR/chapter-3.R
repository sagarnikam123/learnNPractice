#################
#	Chapter-3	#
#	Matrices	#
#################


# Matrix- a 2-dimensional array

# - how to create matrices from scratch,
# - how to re-shape a vector into a matrix. 
# - how to access values within a matrix one-by-one, or in groups
# - how to visualize a matrix's data



# 1- Matrices & its access
	# Creating Matrix
	# matrix of 3 rows high by 5 columns wide, with all its fields set to 1.
	matrix(1, 3, 5)
	# vector to initialize a matrix's value
	a <-1:15
	matrix(a,3,5) # vector's values are copied into the new matrix, one by one.
	matrix(5, 5, 5)

	# ReShaping vector into Matrix
	matVector <- 1:20
	# "dim" function sets dimensions for a matrix. 
	# It accepts a vector with the number of rows and the number of columns to assign.
	dim(matVector)<-c(4,5) # 2 rows and 4 columns
	class(matVector) # class of an object (numeric, matrix, data frame, etc)
	print(matVector)
	dim(matVector)


# 2 -Accessing
	# similar to Vectors,just provide two indices instead of one
	matVector[2,4] # second row in the fourth column of matVector
	# entire row of the matrix - by omitting the column index (but keep the comma)
	matVector[2, ]
	# similarty entire columdn,exclude row index
	matVector[ ,3]
	# reading multiple rows or columns by providing a vector or sequence with their indices
	matVector[,1:3]
	# Setting single value in matrix
	matVector[1,3] <-55
	print(matVector)  


# 3 - Matrix Plotting
	elevation <- matrix(1, 10, 10) # 10 by 10 matrix
	elevation[4, 6] <- 0
	contour(elevation) # contour map
	persp(elevation) #  3D perspective plot with the persp function:
	# looks odd because persp automatically expands the view so that your highest value (the beach surface) is at the very top.
	persp(elevation, expand=0.2)
	# including R inbuild databset an 87x61 matrix 
	contour(volcano)
	# Try now persp function
	persp(volcano, expand=0.2)
	image(volcano) # create heat map
 
 
# 4 - Installing packages

	# from CRAN (http://cran.r-project.org/)
	install.packages("timsac")

	# Offline (Downloaded pacakge)
	#choose any library destination
	.libPaths()
	install.packages("/home/trendwise/Downloads/R packages/RSPython_0.7-1.tar.gz",repos=NULL,lib=.libPaths()[1])

	# Command line(already Downloaded pacakge - RSPython_0.7-1.tar.gz)
	R CMD INSTALL RSPython_0.7-1.tar.gz

	#--------------------------------------------------------------------------------------------

	# Bioconductor (http://www.bioconductor.org/)
	source("http://bioconductor.org/biocLite.R") # installs 'BiocInstaller'
	biocLite() # installs automatically 'Biobase' 'IRanges' 'AnnotationDbi' ‘BiocGenerics’ ‘RSQLite’
	s=all_group() # Get list of all packages in BioConductor
	s
	#installing GenomicFeatures &AnnotationDbi packages
	biocLite(c("GenomicFeatures", "AnnotationDbi"))

	#--------------------------------------------------------------------------------------------

	# Omegahat (http://www.omegahat.org/) 
	install.packages("RCurl", repos = "http://www.omegahat.org/R")
	# For some packages, there are binaries for Windows. For most others, 
	# you will need to specify to download the source package:
	install.packages(packageName, repos = "http://www.omegahat.org/R", type = "source")

	#--------------------------------------------------------------------------------------------

	# Git-Hub (https://github.com/)
	# packages name:- rplos
	# repository name:- rOpenSci
	install.packages("devtools") # requires for downloading & installation of GitHub packages
	require(devtools)
	install_github("rplos", "rOpenSci") # installing rOpenSci pkg
	require(rplos)

	#--------------------------------------------------------------------------------------------

	#RForge
	 install.packages("audio",repos="http://rforge.net") 
	 
	 

