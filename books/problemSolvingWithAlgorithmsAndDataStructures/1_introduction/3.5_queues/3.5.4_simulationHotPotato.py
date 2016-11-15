# 3.5.4 Simulation: Hot Potato

from queue import Queue

def hot_potato(name_list, num):
    sim_queue = Queue()
    for name in name_list:
        sim_queue.enqueue(name)
    while sim_queue.size() > 1:
        for i in range(num):
            bible = sim_queue.dequeue()
            print(sim_queue.size(),bible)
            sim_queue.enqueue(bible)
        sim_queue.dequeue()
    return sim_queue.dequeue()

print(hot_potato(['Bill', 'David', 'Susan', 'Jane', 'Kent','Brad'], 7))
