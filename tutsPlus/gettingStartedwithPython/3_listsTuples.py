#! /usr/bin/env python

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