# 3.3 Stacks
# 3.4.1 Implementing A Stack in Python

# Completed implementation of a stack ADT
from stack import Stack
s = Stack()
s.is_empty()
s.push(4)
s.push('dog')
s.peek()
s.push(True)
print(s.size())
print(s.is_empty())
s.push(8.4)
print(s.pop())
print(s.pop())
print(s.size())

from stack2 import Stack2
s2 = Stack2()
s.push('hello')
s.push('true')
print(s.pop())
