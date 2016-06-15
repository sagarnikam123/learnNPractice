# Strings (Continued)

################################################################################
"first" "second"

# Multiline String(double quotes/single quotes)
""" This is
a multiline
string"""

''' so is
this.'''

m= 'This string \n spans multiple\n lines.'
print(m)

# Universal newline (\n) on all 3 platforms
# using escape sequence (\)
"This is a \" in a string."
'This is a \' in a string.'
q = 'This is a \" and a \' in a string.'
print(q)
k = 'A \\ in a string.'
k
print(k)

# raw string (useful when showing windows path)
path = r'C:\Users\Merlin\Documents\Spells'
path
print(path)

# using string str() constructor
str(496)
str(6.02e23)
str(6.02e-21)

# accessing 'sequence of characer' = string (slicing)
s = 'parrot'
s[4]

# chekcing type
type(s[4])

# string methods
help(str)

c = 'oslo'
c.capitalize()
c

# python string are unicode

################################################################################
