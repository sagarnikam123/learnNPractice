# 11_09-Assertions Performance

# without -O option
python3 -m timeit -n 1 -s 'from random import randrange; from sorted_set import SortedSet; s = SortedSet(randrange(1000) for _ in range(2000))' '[s.count(i) for i in range(1000)]'

# with -O option
python3 -O -m timeit -n 1 -s 'from random import randrange; from sorted_set import SortedSet; s = SortedSet(randrange(1000) for _ in range(2000))' '[s.count(i) for i in range(1000)]'
