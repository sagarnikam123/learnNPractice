# PokeSticks

#######################################################################################################################
#	
#	Hitmonchan and Hitmonlee one day came across a large number of sticks. Unable to think of anything useful to do 
#	with them, they try to solve an interesting problem- what is the maximum area of a rectangle that they can make 
#	using those rectangles?
#	
#	More succinctly, given an array A of N integers which represents stick lengths , we need to report the maximal
#	area over all the rectangles that we can form with the given sticks without breaking any.
#	Note-Only 4 sticks are needed to form a rectangle.
#	
#	Input:
#	
#	First line consists of t , the number of test cases. For each test case there is an integer N and then the
#	entries of array A[i] denoting the length of sticks, in each separate line.
#	
#	Output:
#	The maximum area of rectangle that can be formed using the sticks. In case no rectangle forms ouptut must be -1.
#	
#	Constraints:
#	1<=t<=10000
#	1<=N<=1000
#	1<=A[i]<=1000 for all i
#	
#######################################################################################################################
#	Input
#	
#	2
#	5
#	1 2 3 2 3
#	4
#	1 1 1 2
#######################################################################################################################
#	Output
#	
#	6
#	-1
#######################################################################################################################