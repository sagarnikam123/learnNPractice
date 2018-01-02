from List import List

animals = List()

# prepend & append
print('--- Prepend & Append ---')
animals.prepend('turtle')
print(animals)

animals.append('tiger')
print(animals)

animals.prepend('horse')
print(animals)

animals.append('bear')
print(animals)

animals.append('zebra')
print(animals)

animals.append('lion')
print(animals)

# head & tails
print('--- Head & Tail ---')
print(animals.head())
print(animals.tail())
