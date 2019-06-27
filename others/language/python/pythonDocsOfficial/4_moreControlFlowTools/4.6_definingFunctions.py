# 4.6. Defining Functions

# The execution of a function introduces a new symbol table used for the local variables of the function.
# variable references first look in the local symbol table, then in the local symbol tables of enclosing functions,
# then in the global symbol table, and finally in the table of built-in names.

# UnboundLocalError: local variable 'x' referenced before assignment
x = 1
print("Zero - ",x)
def abc():
    print("First - ",x)
    x = 2
    print("second - ",x)

def fib(n): # write Fibonacci series up to n
    """Print a Fibonacci series up to n."""
    a, b = 0, 1
    while a < n:
        print(a, end=' ')
        a, b = b, a + b
    print()
# Now call the function we just defined
fib(200)
fib
f = fib
f(100)
fib(0)
print(fib(0))

def fib2(n):    # return Fibonacci series up to n
    """ Return a list containing the Fibonacci series up to n."""
    result = []
    a, b = 0, 1
    while a < n:
        result.append(a)    # see below
        a, b = b, a+b
    return result

f100 = fib2(100)
f100
