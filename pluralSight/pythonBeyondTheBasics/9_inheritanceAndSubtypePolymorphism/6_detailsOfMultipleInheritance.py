# 09_06-Details of Multiple Inheritance

class Base1:
 def __init__(self):
         print('Base1.__init__')

class Base2:
 def __init__(self):
         print('Base2.__init__')

class Sub(Base1, Base2):
 pass

s = Sub()

from sorted_list import SortedIntList, IntList
SortedIntList.__bases__
IntList.__bases__
