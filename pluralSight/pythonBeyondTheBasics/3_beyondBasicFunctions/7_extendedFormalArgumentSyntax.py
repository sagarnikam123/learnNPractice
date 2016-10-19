# 03_07-Extended Formal Argument Syntax

print()
print("one")
print("one", "two")
print("one", "two", "three")
"{a}<===>{b}".format(a="Oslo", b="Stavanger")

def hypervolume(*args):
    print(args)
    print(type(args))

hypervolume(3,4)
hypervolume(3,4, 5)

def hypervolume(*lengths):
    i = iter(lengths)
    v = next(i)
    for length in i:
        v *= length
    return v

hypervolume(2,4)
hypervolume(2,4,6)
hypervolume(2,4,6,8)
hypervolume(1)

def hypervolume(length, *lengths):
    v = length
    for item in lengths:
        v *= item
    return v

hypervolume(3,5,7,9)
hypervolume(3,5,7)
hypervolume(3,5)
hypervolume(3)
hypervolume()


def tag(name, **kwargs):
    print(name)
    print(kwargs)
    print(type(kwargs))

tag('img', src="monet.jpg", alt="Sunrise by Claude Monet", border=1)

def tag(name, **attributes):
    result = '<' + name
    for key, value in attributes.items():
        result += ' {k}="{v}"'.format(k=key, v=str(value))
    result += '>'
    return result

tag('img', src="monet.jpg", alt="Sunrise by Claude Monet", border=1)

def print_args(arg1, arg2, *args):
    print(arg1)
    print(arg2)
    print(args)

print_args(1,2,3,4,5)

def print_args(arg1, arg2, *args, kwarg1, kwarg2):
    print(arg1)
    print(arg2)
    print(args)
    print(kwarg1)
    print(kwarg2)

print_args(1,2,3,4,5, kwarg1=6, kwarg2=7)

def print_args(arg1, arg2, *args, kwarg1, kwarg2, **kwargs):
    print(arg1)
    print(arg2)
    print(args)
    print(kwarg1)
    print(kwarg2)
    print(kwargs)

print_args(1,2,3,4,5, kwarg1=6, kwarg2=7, kwarg3=8, kwarg4=9 )
