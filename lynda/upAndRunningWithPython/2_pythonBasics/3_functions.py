# functions.py

########################################################################
# defining a function
def func1():
	print "I am a function"

func1()
print func1()  # Prints "None"
print func1 # prints hex-decimal memory address of function
print "	"

########################################################################
#Function that takes arguments
def	func2(arg1, arg2):
	print arg1 , " " , arg2;

func2(10,20)
print func2(10,20)
print "	"

########################################################################
# Function that returns a value
def cube(x):
	return x*x*x;

print cube(3)
print "	"

########################################################################
# Function with default value in argument
def power(num, x=1):
	result = 1
	for i in range(x):
		result = result * num
	return result

print power(2)
print power(2,3)
print power(x=4, num=2)
print "	"

########################################################################
# Function with variable no of arguments
def multi_add(*args):
	result = 0
	for i in args:
		result = result + i
	return result

print multi_add(4,5,10,4)

########################################################################
