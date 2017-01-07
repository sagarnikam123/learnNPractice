# 09_02-A Realistic Example SortedList

from sorted_list import SortedList
sl = SortedList([4, 3, 78, 11])
sl
len(sl)
sl.add(-42)
sl
sl.add(7)
sl

from sorted_list import IntList
il = IntList([1,2,3,4])
il
il.add(19)
il
# TypeError: IntList only supports integer values.
il.add('5')
