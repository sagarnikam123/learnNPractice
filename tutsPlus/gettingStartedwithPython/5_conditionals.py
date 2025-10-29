#! /usr/bin/env python

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
