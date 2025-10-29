# Defining functions and returning values

################################################################################
def square(x):
    return x * x

square(5)

def launch_missiles():
    print('Missiles launched!')

launch_missiles()

def even_or_odd(n):
    if n % 2 == 0 :
        print('even')
        return
    print('odd')

even_or_odd(4)
even_or_odd(5)
w = even_or_odd(31)
w is None

# adding fetch_words() function in pyfund/words.py
# calling fetch_words function from imported module
import words
words.fetch_words()

# or import specific funciton from module & call it
from words import fetch_words
fetch_words()

# adding print(__name__) in words.py
# give __main__ as output
import words

# if imported again, no module name on REPL
# module imported only once, on first
python3 words.py

# add if __name__ == "__main__" : in words.py
# which run function as a script
python3 words.py

################################################################################
