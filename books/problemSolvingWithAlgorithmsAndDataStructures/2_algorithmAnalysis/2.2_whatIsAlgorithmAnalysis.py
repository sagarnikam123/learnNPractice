# 2.2 What Is Algorithm Analysis

def sum_of_n(n):
    the_sum = 0
    for i in range(1, n + 1):
        the_sum = the_sum + i
    return the_sum

print(sum_of_n(10))

def foo(tom):
    fred = 0
    for bill in range(1, tom+1):
        barney = bill
        fred = fred + barney
    return fred

print(foo(10))

import time

def sum_of_n_2(n):
    start = time.time()
    the_sum = 0
    for i in range(1, n+1):
        the_sum = the_sum + i
    end = time.time()
    return the_sum, end - start

for i in range(5):
    print('Sum is %d requied %10.7f seconds' %sum_of_n_2(10000))

for i in range(5):
    print('Sum is %d requied %10.7f seconds' %sum_of_n_2(1000000))

def sum_of_n_3(n):
    start = time.time()
    theSum = (n * (n + 1)) / 2
    end = time.time()
    return theSum, end - start

print(sum_of_n_3(10))

noToRun = [10000, 100000, 1000000, 10000000, 1000000000 ]
for i in noToRun:
    print('Sum is %d requied %10.7f seconds' %sum_of_n_3(i))
