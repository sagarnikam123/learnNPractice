#! /usr/bin/env python

var1 = "this is a string"
print var1
var2 = "and another"
print var2
print var1+var2
var3 = var1+var2

# multiline strings
	multiline = "This is a \n\
	multiline string "
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
