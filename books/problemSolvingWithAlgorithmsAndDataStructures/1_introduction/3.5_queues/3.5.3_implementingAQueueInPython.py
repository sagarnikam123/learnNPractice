# 3.5.3 Implementing A Queue in Python

from queue import Queue
q = Queue()
q.is_empty()
q.enqueue(4)
q.enqueue('dog')
q.enqueue(True)
q.size()
q.is_empty()
q.enqueue(8.4)
q.dequeue()
q.dequeue()
q.size()
