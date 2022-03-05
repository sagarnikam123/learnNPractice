#! /usr/bin/env python

# madlib.py - module
def madlib1(adjective, name):
	print 'The %s %s ate all the pizza' % (adjective, name)

def madlib2(adjective='cool',name='jesse'):
	print 'The %s %s ate all the pizza' % (adjective, name)

# using module
import madlib
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
