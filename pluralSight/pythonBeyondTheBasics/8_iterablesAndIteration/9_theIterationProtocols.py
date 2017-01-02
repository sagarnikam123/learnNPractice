# 08_09-The Iteration Protocols

from example_iterator import ExampleIterator

i = ExampleIterator()
next(i)
next(i)
next(i)
# StopIteration
next(i)

for i in ExampleIterator():
    print(i)
