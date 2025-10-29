#############################################
#                                          	#
#	 TutsPlus - Getting Started with Python	#
#                                          	#
#############################################


#############################
#	#! /usr/bin/env python	#
#############################


#################################
#	01_hello-world.mov - 5.42	#
#################################

print 'Hello World !'
2+1
3*7
2*(3+4)
print 'hey'
3+2
print 'yo'

# executing from *.py file
#! /usr/bin/env python
print 'yo !'

#####################################
#	02_strings-slicing.mov - 8.29	#
#####################################

var1 = 'this is a string'
print var1
var2 = 'and another'
print var2
print var1+var2
var3 = var1+var2

# multiline strings
	multiline = 'This is a \n\
	multiline string '
	print multiline

	multilie = """this is also
	a
	multiline string"""
	print multiline

# comments
	#fsdfsdf

# indexing
	print var3
	len(var3)
	var3[0]
	var3[1]
	var3[2]
	var3[-1]
	var3[-27]
	var3[-27] == var3[0]
# slicing
	var3[1:4]
	var3[1:-6]
	var3[10:]
	var3[-0] == var3[0]
	var3[:-10]
	var3[:4]

	# Strange behaviour
		# starting with negative index, never works
		var3[-2:12]
		# but this works
		var3[-8:]
		# no error
		var3[31:]

#################################
#	03_lists-tuples.mov	- 10.33	#
#################################

list = ['the','holy','grail']
list
nested_list = ['the','monty','python','and',list]
nested_list

# checking in nested list
	'monty' in nested_list
# not checked inside nested list
	'holy' in nested_list
	len(nested_list)
	nested_list[1]
	nested_list[1:]
	nested_list[:]
	nested_list[-1]
	nested_list[-1][1]
	nested_list[-1][1][0]
	nested_list[0:2]
	nested_list[:3]
	nested_list[2:-2]

# adding new elements to perticular index
	nested_list[1] = 'awesome'
	nested_list[-1:] = ['tuts','plus']
# appending at last
	nested_list.append('for sure')
# inserting
	nested_list.insert(1, 'super')
# extending /  adding to previous list
	another_list = ['python','rocks']
	nested_list.extend(another_list)
	nested_list
# removing element
	nested_list.remove('awesome')
	nested_list

# tuples - immutable
	tuple = 'one','two','three'
	tuple
	print tuple[2]
	tuple[:]
	tuple[1:2]
	tuple[0:1]
	tuple[:2]
	tuple[1:]
# caution - both prints, but concentrate on output (how)
	print tuple[1]
	tuple[1]

# Strange behaviour -no error if out of range
	tuple[0:6]
	tuple2 = 'tuts','plus'
	tuple3 = tuple2,tuple
	tuple3

#########################################
#	04_sets-and-dictionaries.mov - 6.23	#
#########################################

cars  = ['honda','ford','dodge','chevy','honda','dodge']
cars
autos = set(cars)
autos
motorcycles = ['honda','harley','yamaha','bmw','harley']
motos = set(motorcycles)
motos
motos - autos
autos | motos
autos & motos
dict  = {'key':'value'}
dict['key']
dict = {'name':'Jesse'}
dict['favourite site'] = 'tuts Plus'
dict
del dict['location']
dict
dict.keys()
dict.values()
'name' in dict
'not a real key' in dict

#################################
#	05_conditionals.mov	- 8.45	#
#################################

name = raw_input('Please type in your name : ')

# 1 - condition
if len(name) < 5 :
	print 'Your name has fewer than 5 characters'
elif len(name) == 5 :
	print 'Your name has exactly 5 characters'
	if name == 'Jesse':
		print 'Hey Jesse !'
else : print 'Your name has greater than 5 characters'

# 2 - condition
language = raw_input('Please enter a programming language : ')
if language in ['C++','Python','Java','']:
	print language + 'rocks'

# 3 - condition
dinner = raw_input('Please choose pizza or spaghetti : ')

if dinner == 'pizza' or dinner == 'spaghetti' :
	print 'bone appetit !'
else :
	print "You can't have", dinner, 'for dinner.'

#########################
#	06_loops.mov - 7.24	#
#########################

languages = ['python','java','c++','php']

for language in languages :
	print language , 'rocks !'

dict = { 'name':'Jesse','location':'Denver','favorite':'tutsplus'}

for key in dict :
	print 'His',key,'is',dict[key]
print range(10)

for int in range(10) :
	print 'int = ', int

count = 0
while count < 10 :
	print count,' is less than 10'
	count +=1

for i in range(10):
	print 'i = ', i
	if i ==5 :
		break
print 'done looping'

for i in range(2):
	print 'this is before continue'
	continue
	print 'this is after the countinue statement '

#################################
#	07_functions.mov - 10.48	#
#################################

def madlib(adjective ='thirsty',name = 'adam'):
	print 'the %s %s ate all the pizza' %(adjective,name)
madlib()
madlib(adjective='hungry',name = 'adam')

def shoppingCart(itemName, *avgPrices):
	for price in avgPrices :
		print 'price: ', price
shoppingCart('computer',100,120,34)

def shoppingCart(itemName, **avgPrices):
	for price in avgPrices :
		print price , 'price : ', avgPrices[price]
shoppingCart('computer',amazon = 100,ebay = 120,bestBuy = 34)

def dbLookup() :
	dict = {}
	dict['amazon'] = 100
	dict['ebay'] = 120
	dict['bestBuy'] = 34
	return dict

def shoppingCart(itemName, avgPrices):
	print 'item : ', itemName
	for price in avgPrices:
		print price, 'price: ', avgPrices[price]
shoppingCart('computer',dbLookup())

#####################################
#	08_scope-recursion.mov - 4.56	#
#####################################

# scope
variable = 'tutsplus'

def scopeInvestigator():
	global variable
	variable = 'envato'
	print 'the variable inside the function is', variable

scopeInvestigator()
print 'the variable outside the function is',variable

# recursion
def factorial(number):
	if number == 1:
		return 1
	else :
		return number*factorial(number-1)

print 'factorial is ',factorial(5)

#############################################
#	09_modules-standard-library.mov - 8.53	#
#############################################

# os module
import os
print dir(os) # to prints all functions withing a module

os.chdir('/home/hadoop/Desktop')
print os.getcwd()
os.makedirs('pythonDir1')

print os.system('ls -l')
os.system('date')

# sys module
import sys
print sys.argv

from sys import argv # only importing required function
print argv

if argv[-1] == 'purr':
	print 'meow !'
if argv[-1] == 'bark':
	print 'ruff ! '

# re module (regular expression)
import re
print re.search('a','apple')
print re.search('a','apple').group()

print re.search('c(.*)k','cocktail').group()
print re.search('ram(.*)yan','ramnarayan').group(1)

print re.findall('\w+@\w+\.com','email1 is jesseshal@gmail.com and email2 is bob@example.com')

#############################################
#	10_write-your-own-modules.mov - 7.04	#
#############################################


# madlib.py - module
def madlib1(adjective, name):
	print 'The %s %s ate all the pizza' % (adjective, name)

def madlib2(adjective='cool',name='jesse'):
	print 'The %s %s ate all the pizza' % (adjective, name)

# using module
import madlib.
madlib.madlib2()
madlib.madlib2('rajiv','harami')

# importing from other folder
mkdir python
cp ~/Desktop/learn/python/files/madlib.py ~/python

	# 1- appending to sys.path
	import sys
	sys.path
	sys.path.append('/home/hadoop/python')
	import madlib
	madlib.madlib2

	# 2 - using config file
	cd /usr/lib/python2.7/dist-packages
	sudo nano mymodules.pth
		# /home/hadoop/python
	cd ~
	python
	import sys
	sys.path
	import madlib
	madlib.madlib1('kutra','harami')

#############################
#	11_file-crud.mov - 8.28	#
#############################

#########################
#	12_oop_1.mov - 6.57	#
#########################

#########################
#	13_oop_2.mov - 7.28	#
#########################

#################################
#	14_exceptions.mov - 7.36	#
#################################

#############################
#	15_urllib.mov - 11.24	#
#############################

#################################
#	16_web-scraping.mov - 7.49	#
#################################

#####################################
#	17_dynamic-web-pages.mov - 5.28	#
#####################################

#####################################
#	18_gui-programming.mov - 17.31	#
#####################################

#############################
#	19_distutils.mov - 6.02	#
#############################

#########################################
#	20_python2-vs-python3.mov - 7.37	#
#########################################
