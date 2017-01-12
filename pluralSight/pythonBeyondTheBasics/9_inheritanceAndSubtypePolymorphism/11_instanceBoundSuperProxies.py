# 09_11-Instance-Bound Super Proxies

from sorted_list import *
from pprint import pprint as pp
pp(SortedIntList.mro())

sil = SortedIntList([5, 15, 10])
sil
super(SortedList, sil)
super(SortedList, sil).add(6)
sil
super(SortedList, sil).add('I am not a number ! I am a free man !')
sil
