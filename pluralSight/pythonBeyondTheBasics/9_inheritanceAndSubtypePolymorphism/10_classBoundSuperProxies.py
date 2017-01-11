# 09_10-Class-Bound Super Proxies

from sorted_list import *

SortedIntList.mro()
super(SortedList, SortedIntList)

super(SortedList, SortedIntList).add
# TypeError: add() missing 1 required positional argument: 'item'
super(SortedList, SortedIntList).add(4)

super(SortedIntList, SortedIntList)._validate(5)
# TypeError: IntList only supports integer values.
super(SortedIntList, SortedIntList)._validate('hello')
# TypeError: super(type, obj): obj must be an instance or subtype of type

super(int, IntList)
