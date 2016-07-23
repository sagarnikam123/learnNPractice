# Main Functions and command line arguments

################################################################################
# import multile object from module
from words import (fetch_words, print_words)
print_words(fetch_words())

# import everything from module
from words import *
fetch_words()
print_words( ['Any', 'list', 'of', 'words'] )
main()
print_words( [1, 7, 3] )
print_words("Strings are iterable too")

# refactor words.py
# give url from command line
python3 words.py http://sixty-north.com/c/t.txt

# change words.py to take system arguments
from words import *
main('http://sixty-north.com/c/t.txt')

################################################################################
