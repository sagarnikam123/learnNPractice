# 1.4 Review of Basic Python

# 1.4.1 Getting Started with Data
print("Algorithms and Data Structures")

# Built-in Atomic Data Types
print(2+3 * 4)
print((2+3) * 4)
print(2**10)
print(6/3)
print(7/3)
print(7//3)
print(7%3)
print(3/6)
print(3//6)
print(3%6)
print(2**100)

True
False
False or True
not (False or True)
True and True
False and False

print(5 == 10)
print(10 > 5)
print((5 >= 1) and (5 <= 10))

the_sum = 0
the_sum
the_sum = the_sum + 1
the_sum
the_sum = True
the_sum

# Built-in Collection Data Types
[1, 3, True, 6.5]
my_list = [1, 3, True, 6.5]
my_list

my_list = [0] * 6
my_list

my_list = [1,2,3,4]
A = [my_list] * 3
print(A)
my_list[2] = 45
print(A)

my_list = [1024, 3, True, 6.5]
my_list.append(False)
print(my_list)
my_list.insert(2, 4.5)
print(my_list)
print(my_list.pop())
print(my_list)
print(my_list.pop(1))
print(my_list)
print(my_list.pop(2))
print(my_list)
my_list.sort()
print(my_list)
my_list.reverse()
print(my_list)
print(my_list.count(6.5))
print(my_list.count(4.5))
my_list.remove(6.5)
print(my_list)
del my_list[0]
print(my_list)

(54).__add__(21)

range(10)
list(range(10))
range(5,10)
list(range(5,10))
list(range(5,10,2))
list(range(10,1,-1))

"David"
my_name = "David"
my_name[3]
my_name * 2
len(my_name)

my_name
my_name.upper()
my_name.center(10)
my_name.find('v')
my_name.split('v')

my_list
my_list[0] = 2 **10
my_list
my_name
# TypeError: 'str' object does not support item assignment
my_name[0] = 'X'

my_tuple = (2, True, 4.96)
my_tuple
len(my_tuple)
my_tuple[0]
my_tuple * 3
my_tuple
my_tuple[0:2]
# TypeError: 'tuple' object does not support item assignment
my_tuple[1] = False

{3,6,"cat",4.5,False}
my_set = {3,6,"cat",4.5,False}
my_set
len(my_set)
False in my_set
"dog" in my_set

my_set
my_set = {False, 3, 4.5, 6, 'cat'}
your_set = {99, 3, 100}
my_set.union(your_set)
my_set | your_set
my_set.intersection(your_set)
my_set & your_set
my_set.difference(your_set)
my_set - your_set
{3,100}.issubset(your_set)
{3,100} <= your_set
my_set.add("house")
my_set
my_set.pop()
my_set
my_set.clear()
my_set

capitals = {'Iowa' : 'DesMoines', 'Wisconsin' : 'Madison'}
capitals
print(capitals['Iowa'])
capitals['Utah'] = 'SaltLakeCity'
print(capitals)
capitals['California'] = 'Sacramento'
print(len(capitals))

for k in capitals:
    print(capitals[k], " is the capital of ", k)

phone_ext = {'david':1410, 'brad':1137}
phone_ext
phone_ext.keys()
list(phone_ext.keys())
"brad" in phone_ext

phone_ext.values()
list(phone_ext.values())
phone_ext.items()
list(phone_ext.items())
phone_ext.get('kent')
phone_ext.get('kent', 'NO ENTRY')
del phone_ext['david']
phone_ext

# 1.4.2 Input and Output
user_name = input('Please enter your name: ')
print("Your name in all capitals is", user_name.upper(), "and has length", len(user_name))

user_radius = input("Please enter the radius of the circle ")
radius = float(user_radius)
diameter =  2 * radius
diameter

# String Formatting
print("Hello")
print("Hello", "World")
print("Hello", "World", sep="***")
print("Hello", "World", end="***")
print("Hello", end="***");print("World")
name = 'a'; age = 12

print(name, "is", age, "years old.")
print("%s is %d years old." %(name, age))
