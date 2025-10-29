# 03_08-Extended Call Syntax

def print_args(arg1, arg2, *args):
    print(arg1)
    print(arg2)
    print(args)

t = (11, 12, 13, 14)
print_args(*t)

def color(red, green, blue, **kwargs):
    print('r =', red)
    print('g =', green)
    print('b =', blue)
    print(kwargs)

k = {'red': 21, 'green': 68, 'blue': 120, 'alpha': 52 }
color(**k)

k =dict(red=21, green=68, blue=120, alpha=52)
color(**k)
