import time


def calc_sqaure(numbers):
    start = time.time()
    result = []
    for number in numbers:
        result.append(number * number)
    end = time.time()
    print('calc_square took:', str((end - start) * 1000) + 'milli sec')
    return result


def calc_cube(numbers):
    start = time.time()
    result = []
    for number in numbers:
        result.append(number * number * number)
    end = time.time()
    print('calc_cube took:', str((end - start) * 1000) + 'milli sec')
    return result


array = range(1, 100000)
out_square = calc_sqaure(array)
out_cube = calc_cube(array)
################################################################################

import time


def time_it(func):
    def warpper(*args, **kwargs):
        start = time.time()
        result = func(*args, **kwargs)
        end = time.time()
        print(func.__name__ + ' took ' + str((end - start) * 1000) + ' milli sec')
        return result
    return warpper


@time_it
def calc_sqaure(numbers):
    result = []
    for number in numbers:
        result.append(number * number)
    return result


@time_it
def calc_cube(numbers):
    result = []
    for number in numbers:
        result.append(number * number * number)
    return result


array = range(1, 100000)
out_square = calc_sqaure(array)
out_cube = calc_cube(array)
