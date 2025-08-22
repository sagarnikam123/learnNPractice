# 11_dictionaries and tuples

d = {'tom': 7326789820, 'rob': 7325730239, 'joe': 7326789820}
print(d)
d['tom']

d['sam'] = 739567987
print(d)

del d['sam']
print(d)

for key in d:
    print('key :', key, ' value :', d[key])

for k,v in d.items():
    print('key :', k, ' value :', v)

'tom' in d
'samir' in d
d.clear()
d

point = (5,9)
point[0]
point[1]
point[0]=10
# TypeError: 'tuple' object does not support item assignment

# Exercise

# 1
member_number = input('How many family members info you want to store ? <Enter number> : ')

family = {}
for member in range(int(member_number)):
    name = input(str(member + 1) + ' - Member name : ')
    age = input(str(member + 1) + ' - Member age : ')
    family[name] = age

name_enquiry = input('Whose age you want to enquire <Type name> : ')
print(name_enquiry, "'s age : ", family[name_enquiry])

print('\nWhole family : ')
for k, v in family.items():
    print(k, ':', v)

# 2
def add_and_multiply(first, second):
    return (first+second, first*second)

print(add_and_multiply(3,4))
