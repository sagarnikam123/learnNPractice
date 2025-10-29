# 4.7. More on Defining Functions

# 4.7.1. Default Argument Values

def ask_ok(prompt, retries=4, reminder='Please try again!'):
    while True:
        ok = input(prompt)
        if ok in ('y', 'ye', 'yes'):
            return True
        if ok in ('n', 'no', 'nop', 'nope'):
            return False
        retries = retries - 1
        if retries < 0:
            raise ValueError('invalid user response')
        print(reminder)

ask_ok('Do you really want to quit?')
ask_ok('OK to overwrite the file?', 2)
ask_ok('OK to overwrite the file?', 2, 'Come on, only yes')

i = 5
def f(arg=i):
    print(arg)

i = 6
f()

def f(a, L=[]):
    L.append(a)
    return L

print(f(1))
print(f(2))
print(f(3))

def f(a, L=None):
    if L is None:
        L = []
    L.append(a)
    return L

# 4.7.2. Keyword Arguments
def parrot(voltage, state='a stiff', action='voom', type='Norwegian Blue'):
    print("-- This parrot wouldn't", action, end=' ')
    print('if you put', voltage, 'volts throught it.')
    print('-- Lovely plumage, the', type)
    print("-- It's", state, '!')

parrot(1000)    # 1 positional argument
parrot(voltage=1000)    # 1 keyword argument
parrot(voltage=1000000, action='VOOOOOM')   # 2 keyword arguments
parrot(action='VOOOOOM', voltage=1000000)   # 2 keyword arguments
parrot('a million', 'bereft of life', 'jump')   # 3 positional arguments
parrot('a thousand', state='pushing up the daisies')    # 1 positional, 1 keyword

# TypeError: parrot() missing 1 required positional argument: 'voltage'
parrot(1000)

# SyntaxError: positional argument follows keyword argument
parrot(voltage=5.0, 'dead')

# TypeError: parrot() got multiple values for argument 'voltage'
parrot(110, voltage=220)

# TypeError: parrot() got an unexpected keyword argument 'actor'
parrot(actor='John Cleese')

def function(a):
    pass
# TypeError: function() got multiple values for argument 'a'
function(0, a = 0)

def cheeseshop(kind, *arguments, **keywords):
    print('-- Do you have any', kind, '?')
    print("-- I'm sorry, we're all out of", kind)
    for arg in arguments:
        print(arg)
    print('-' * 40)
    for kw in keywords:
        print(kw, ':', keywords[kw])

cheeseshop('Limburger', "It's very runny, sir.",
            "It's really very, VERY runny, sir.",
            shopkeeper='Michael Palin',
            client='John Cleese',
            sketch='Cheese Shop Sketch')

# 4.7.3. Arbitrary Argument Lists
def concat(*args, sep='/'):
    return sep.join(args)

concat('earth', 'mars', 'venus')
concat('earth', 'mars', 'venus', sep='.')

# 4.7.4. Unpacking Argument Lists
list(range(3, 6))
args = [3, 6]
list(range(*args))
# TypeError: 'list' object cannot be interpreted as an integer
list(range(args))

def parrot(voltage, state='a stiff', action='voom'):
    print("-- This parrot wouldn't", action, end=' ')
    print('if you put', voltage, 'volts through it.', end=' ')
    print("E's", state, '!')

d = {'voltage': 'four million', 'state': "bleedin' demised", 'action': 'VOOM'}
parrot(**d)

# 4.7.5. Lambda Expressions

def make_incrementor(n):
    return lambda x: x + n

f = make_incrementor(42)
f(0)
f(1)

pairs = [(1, 'one'), (2, 'two'), (3, 'three'), (4, 'four')]
pairs.sort(key=lambda pair : pair[1])
pairs

# 4.7.6. Documentation Strings
def my_function():
    """Do nothing, but document it.

    No really, it doesn't do anything.
    """
    pass

print(my_function.__doc__)

# 4.7.7. Function Annotations
def f(ham: str, eggs: str = 'eggs') -> str :
    print('Annotations:', f.__annotations__)
    print('Arguments:', ham, eggs)
    return ham + ' and ' + eggs
f('spam')
