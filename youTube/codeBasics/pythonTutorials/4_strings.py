# 4_Strings

text="ice cream"
text[0]
text[1]
text[0]='g'
# TypeError: 'str' object does not support item assignment

text[0:3]
text[4:9]
text[4:]
text[:3]

text="hello"
text='hello'
text='let's learn python'
# SyntaxError: invalid syntax
text="let's learn python"
text='hello "world"'
text
address="1 purple street
# SyntaxError: EOL while scanning string literal
address='''1 purple street
new york
usa'''
print(address)
address

s1="hello"
s2="world"
s1+s2
s1+ ' ' + s2
s="total states in usa #"

num=25
s+num
# TypeError: Can't convert 'int' object to str implicitly
str(num)
s+str(num)

# Exercise

# 1
sentence="Earth revolves around the sun"
sentence[6:15]
sentence[-3:]

# 2
first="I love eating"
second="veggies"
third="fruits"
first+ ' ' + second + ' ' + third

# 3
numOfFruitsEveryday=2
print(first+' '+str(numOfFruitsEveryday)+' '+third+' '+ "everyday")
