# 08_10-Putting the Protocols Together

from example_iterator import ExampleIterator, ExampleIterable

for i in ExampleIterable():
    print(i)

[i * 3 for i in ExampleIterable()]
