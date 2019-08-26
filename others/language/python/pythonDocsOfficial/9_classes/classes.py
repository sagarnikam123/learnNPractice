# 9. Classes

# 9.1. A Word About Names and Objects

# 9.2. Python Scopes and Namespaces

# 9.2.1. Scopes and Namespaces Example
def scope_test():
    def do_local():
        spam = 'local spam'
    def do_nonlocal():
        nonlocal spam
        spam = 'non local spam'
    def do_global():
        global spam
        spam = 'global spam'
    spam = 'test spam'
    do_local()
    print('After local assignment:', spam)
    do_nonlocal()
    print('After nonolocal assignment:', spam)
    do_global()
    print('Afer global assignment:', spam)

scope_test()
print('In global scope:', spam)

# 9.3. A First Look at Classes

# 9.3.1. Class Definition Syntax

# 9.3.2. Class Objects
class MyClass:
    """ A simple example class """
    i = 12345
    def f(self):
        return 'hello world'

x = MyClass()
x.i
x.f

class Complex:
    def __init__(self, realpart, imagpart):
        self.r = realpart
        self.i = imagpart

x = Complex(3.0, -4.5)
x.r, x.i

# 9.3.3. Instance Objects
x.counter = 1
while x.counter < 10:
    x.counter = x.counter * 2

print(x.counter)
del x.counter

# 9.3.4. Method Objects
x.f()

xf = x.f
while True:
    print(xf())

# 9.3.5. Class and Instance Variables

class Dog:
    kind = 'canine' # class variable shared by all instances
    def __init__(self, name):
        self.name = name

d = Dog('Fido')
e = Dog('Buddy')
d.kind
e.kind
d.name
e.name

class Dog:
    tricks = [] # mistaken use of a class Variable
    def __init__(self, name):
        self.name = name
    def add_trick(self, trick):
        self.tricks.append(trick)

d = Dog('Fido')
e = Dog('Buddy')
d.add_trick('roll over')
e.add_trick('play dead')
d.tricks
e.tricks

class Dog:
    def __init__(self, name):
        self.name = name
        self.tricks = []    # creates a new empty list for each dog
    def add_trick(self, trick):
        self.tricks.append(trick)

d = Dog('Fido')
e = Dog('Buddy')
d.add_trick('roll over')
e.add_trick('play dead')
d.tricks
e.tricks

# 9.4. Random Remarks
# Function defined outside the class
def f1(self, x, y):
    return min(x, x+y)

class C:
    f = f1
    def g(self):
        return 'hello world'
    h = g

class Bag:
    def __init__(self):
        self.data = []
    def add(self, x):
        self.data.append(x)
    def addtwice(self, x):
        self.add(x)
        self.add(x)
