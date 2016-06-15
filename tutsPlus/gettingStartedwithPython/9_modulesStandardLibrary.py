#! /usr/bin/env python

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