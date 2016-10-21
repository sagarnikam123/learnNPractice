# 03_10-Duck Tail Transposing Tables

sunday = [12, 14, 15, 15, 17, 21, 22, 22, 23, 22, 20, 18]
monday = [13, 14, 14, 14, 16, 20, 21, 22, 22, 21, 19, 17]

for item in zip(sunday, monday):
    print(item)

tuesday = [2, 2, 3, 7, 9, 10, 11, 12, 10, 9, 8, 8]
for item in zip(sunday, monday, tuesday) :
    print(item)

daily = [sunday, monday, tuesday]
from pprint import pprint as pp

pp(daily)

for item in zip(daily[0], daily[1], daily[2]):
    print(item)

for item in zip(*daily):
    print(item)

transposed = list(zip(*daily))
transposed
pp(transposed)
