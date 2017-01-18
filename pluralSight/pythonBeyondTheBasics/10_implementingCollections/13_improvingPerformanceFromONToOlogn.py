# 10_13-Improving Performance From O(N) to O(log n)

from sorted_set import SortedSet
from random import randrange

s = SortedSet(randrange(1000) for _ in range(2000))
s
len(s)
 [s.count(i) for i in range(1000)]
