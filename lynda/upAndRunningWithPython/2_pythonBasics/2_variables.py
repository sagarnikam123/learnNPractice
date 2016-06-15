# variables.py

########################################################################
#Declares a variable & print it

f = 0;
print f

########################################################################
# re-declaring the variable & printing it
f = "abc"
print f;

########################################################################
# ERROR : different types cannot be combined
#print "string type " + 123
# TypeError: cannot concatenate 'str' and 'int' objects
print "string type " + str(123)

########################################################################
# Global vs. Local variables in functions 
def someFunction():
	# global f
	f = "def"
	print f

someFunction()

print f+ " - This is Global value without keyword";

########################################################################
#using keyword global
def printGlobalValue():
	global f
	print f;
	
printGlobalValue()	

########################################################################
#deleting variable
# del f
print f

########################################################################
