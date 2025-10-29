# Function arguments in detail

################################################################################
# functions using default arguments
def banner(message, border='-'):
    line = border * len(message)
    print(line)
    print(message)
    print(line)

banner('Norwegian Blue')
banner('Sun, Moon and Stars', '*')
banner('Sun, Moon and Starts', border='*')
banner(border='.', message='Hello from Earth')

import time
time.ctime()
def show_default(arg=time.ctime()):
    print(arg)

show_default()
show_default()

def add_spam(menu = []):
    menu.append('spam')
    return menu

breakfast = ['bacon', 'eggs']
add_spam(breakfast)
lunch = ['backed beans']
add_spam(lunch)
add_spam()
add_spam()
add_spam()
add_spam()

# using immutable 'None' object
def add_spam(menu = None):
    if menu is None:
        menu = []
    menu.append('spam')
    return menu

add_spam()
add_spam()
add_spam()

################################################################################
