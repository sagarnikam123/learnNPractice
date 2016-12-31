# 08_07-The functools.reduce() Function

from functools import reduce
import operator

reduce(operator.add, [1, 2, 3, 4, 5])
numbers = [1, 2, 3, 4, 5]
accumulator = operator.add(numbers[0], numbers[1])
for item in numbers[2:] :
    accumulator = operator.add(accumulator, item)

accumulator
# TypeError: reduce() of empty sequence with no initial value
reduce(mul, [])
reduce(mul, [1])

values = [1, 2, 3]
reduce(operator.add, values, 0)

values = []
reduce(operator.add, values, 0)

values = [1, 2, 3]
reduce(operator.mul, values, 1)
