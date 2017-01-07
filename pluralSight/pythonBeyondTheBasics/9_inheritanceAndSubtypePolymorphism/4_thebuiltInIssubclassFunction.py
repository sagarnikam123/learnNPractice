# 09_04-The Built-In issubclass() Function

from sorted_list import *

issubclass(IntList, SimpleList)
issubclass(SortedList, SimpleList)
issubclass(SortedList, IntList)

 class MyInt(int): pass
 class MyVerySpecialInt(MyInt): pass

 issubclass(MyVerySpecialInt, int)
