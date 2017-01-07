# 09_03-The Built-In isinstance() Function

isinstance(3, int)
isinstance('hello!', str)
isinstance(4.567, bytes)

from sorted_list import SortedList
isinstance(sl, SortedList)

from sorted_list import SimpleList
isinstance(sl, SimpleList)

x = []
isinstance(x, (float, dict, list))
