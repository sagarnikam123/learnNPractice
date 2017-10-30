# 23_List Set Dict Comprehensions

numbers = [1, 2, 3, 4, 5, 6, 7]
even = []

for i in numbers:
    if i%2 == 0 :
        even.append(i)
even

even = [i for i in numbers if i%2 ==0]
even

sqr_numbers = [i*i for i in numbers]
sqr_numbers

s = set([1, 2, 3, 4, 5, 2, 3])
s
even = {i for i in numbers if i%2 ==0 }
even
even = {i for i in s if i%2 ==0 }
even

cities = ['mumbai', 'new york', 'paris']
countries = ['india', 'usa', 'france']
z = zip(cities, countries)
z
for a in z:
    print(a)
d = { city: country  for city, country in zip(cities, countries)}
d
