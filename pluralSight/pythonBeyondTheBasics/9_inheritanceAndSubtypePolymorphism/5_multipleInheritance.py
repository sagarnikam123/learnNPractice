# 09_05-Multiple Inheritance

from sorted_list import SortedIntList
sil = SortedIntList([42, 23, 2])
sil

# TypeError: IntList only supports integer values.
SortedIntList([3, 2, '1'])

sil.add(-1234)
sil
# TypeError: IntList only supports integer values.
sil.add('the smallest uninteresting number')
