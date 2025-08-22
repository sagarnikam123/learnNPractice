# 8_if

num=input('Enter a number: ')
num=int(num)

if num%2==0 :
    print('number is even')
else:
    print('number is odd')

4==4
4!=5
4!=4
2>1
2<3
2>=2
2>=1
3<=4
3>2 and 4>1
3>2 and 4>5
3>2 or 4>5
not True
not 4==4

indian=['samosa', 'daal', 'naan']
chinese=['egg role', 'pot sticker', 'fried rice']
italian=['pizza', 'pasta', 'risotto']

dish=input('Enter a dish name: ')

if dish in indian:
    print('indian')
elif dish in chinese:
    print('chinese')
elif dish in italian:
    print('italian')
else:
    print('Based on little knowledge I have I dont know which cuisine is', dish)

# Exercise

# 1
usa=['atlanta', 'new york', 'chicago', 'baltimore']
uk=['london', 'bristol', 'cambridge']
india=['mumbai', 'delhi', 'bangalore']

city = input('Enter a city name : ')

if city in usa:
    print('usa')
elif city in uk:
    print('uk')
elif city in india:
    print('india')
else:
    print("I don't know which city is this ?")

# 2
city1 = input('Enter first city name : ')
city2 = input('Enter first city name : ')

if city1 in usa and city2 in usa:
    print('usa')
elif city1 in uk and city2 in uk:
    print('uk')
elif city1 in india and city2 in india:
    print('india')
else:
    print('both are either not in the same country or not in the available country list')
