#! /usr/bin/env python

languages = ['python','java','c++','php']

for language in languages :
	print language , "rocks !"
	
dict = { "name":"Jesse","location":"Denver","favorite":"tutsplus"}

for key in dict :
	print "His",key,"is",dict[key]
print range(10)

for int in range(10) :
	print "int = ", int

count = 0
while count < 10 :
	print count," is less than 10"
	count +=1
	
for i in range(10):
	print "i = ", i
	if i ==5 :
		break
print "done looping"

for i in range(2):
	print "this is before continue"
	continue
	print "this is after the countinue statement "