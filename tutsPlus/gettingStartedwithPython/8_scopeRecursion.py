#! /usr/bin/env python

# scope
variable = 'tutsplus'

def scopeInvestigator():
	global variable 
	variable = 'envato'
	print "the variable inside the function is", variable
	
scopeInvestigator()
print 'the variable outside the function is',variable

# recursion
def factorial(number):
	if number == 1:
		return 1		
	else :
		return number*factorial(number-1)
	
print 'factorial is ',factorial(5)