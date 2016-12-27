# 08_03-The map() Function

map(ord, 'The quick brown fox')

from tracer import Trace
result = map(ord, 'The quick brown fox')
next(result)
next(result)
next(result)
list(map(ord, 'The quick brown fox'))

for o in map(ord, 'The quick brown fox'):
    print(o)
