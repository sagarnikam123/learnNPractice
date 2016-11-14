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

# 3.4.3 Simple Balance Parentheses
from stack import Stack

def par_checker(symbol_string):
    s = Stack()
    balanced = True
    index = 0
    while index < len(symbol_string) and balanced:
        symbol = symbol_string[index]
        if symbol == '(':
            s.push(symbol)
        else:
            if s.is_empty():
                balanced = False
            else:
                s.pop()
        index = index + 1
    if balanced and s.is_empty():
        return True
    else:
        return False

print(par_checker('((()))'))
print(par_checker('(()'))

#completely exteded par_checker
def par_checker2(symbol_string):
    s = Stack()
    balanced = True
    index = 0
    while index < len(symbol_string) and balanced:
        symbol = symbol_string[index]
        if symbol in '([{':
            s.push(symbol)
        else:
            if s.is_empty():
                balanced = False
            else:
                top = s.pop()
                if not matches(top, symbol):
                    balanced = False
        index = index + 1
    if balanced and s.is_empty():
        return True
    else:
        return False

def matches(open, close):
    opens = '([{'
    closes = ')]}'
    return opens.index(open) == closes.index(close)

print(par_checker2('{{([][])}()}'))
print(par_checker2('[{()]'))

# 3.4.5 Converting Decimal Numbers to Binary Numbers
from stack import Stack

def divide_by_2(dec_number):
    rem_stack = Stack()
    while dec_number > 0:
        rem = dec_number % 2
        rem_stack.push(rem)
        dec_number = dec_number // 2
    bin_string = ''
    while not rem_stack.is_empty():
        bin_string = bin_string + str(rem_stack.pop())
    return bin_string

print(divide_by_2(42))

# base converter
from stack import Stack

def base_converter(dec_number, base):
    digits = '0123456789ABCDEF'
    rem_stack = Stack()
    while dec_number > 0 :
        rem = dec_number % base
        rem_stack.push(rem)
        dec_number = dec_number // base
    new_string = ''
    while not rem_stack.is_empty():
        new_string = new_string + digits[rem_stack.pop()]
    return new_string

print(base_converter(25,2))
print(base_converter(25,16))
