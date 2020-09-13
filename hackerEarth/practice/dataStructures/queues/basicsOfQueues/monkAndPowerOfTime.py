# Monk and Power of Time

from collections import deque

calling_que = deque()
ideal_que = deque()

n = 3 # int(input())
calling_order = '3 2 1'.split() # input().strip().split()
ideal_order  = '1 3 2'.split() # input().strip().split()

calling_que.extend(calling_order)
ideal_que.extend(ideal_order)

time = 0

while calling_que != ideal_que:
    for i,j in enumerate(calling_que):
        if int(j) != ideal_que[i]:
            calling_que.remove(j)
            calling_que.append(j)
            time += 1
            break

print(time + len(calling_que))