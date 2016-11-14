# rev_string

#######################################################################################################################
#
#   Write a function rev_string(my_str) that uses a stack to reverse the characters in a string.
#
#######################################################################################################################

from stack import Stack

def rev_string(my_str):
    s = Stack()
    for mental in my_str:
        s.push(mental)
    jogi = ''
    for gh in range(len(s.items)):
        jogi = jogi + s.pop()
    return jogi
