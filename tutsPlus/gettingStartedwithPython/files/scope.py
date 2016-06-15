#! /usr/bin/env python

variable = 'tutsplus'

def scopeInvestigator():
	global variable 
	variable = 'envato'
	print "the variable inside the function is", variable
	
scopeInvestigator()
print 'the variable outside the function is',variable
