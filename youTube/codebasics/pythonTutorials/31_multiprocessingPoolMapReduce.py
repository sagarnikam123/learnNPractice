# 31. Multiprocessing Pool (Map Reduce


from multiprocessing import Pool
import time

def f(n):
    return n * n

if __name__ == '__main__':

    t1 = time.time()
    p = Pool()
    result = p.map(f, range(10000))
    p.close()
    p.join()

    print('Pool took:', time.time() - t1)

    t2 = time.time()
    result = []
    for x in range(1000):
        result.append(f(x))

    print('Serial processing took:', time.time() - t2)

################################################################################
from multiprocessing import Pool


def f(n):
    return n * n

if __name__ == '__main__':
    p = Pool(processes=3)
    result = p.map(f, [1, 2, 3, 4, 5])
    for n in result:
        print(n)
