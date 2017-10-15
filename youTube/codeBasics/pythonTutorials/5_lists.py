#5_Lists

item1="bread"
item2="pasta"
item3="fruits"

items=["bread", "pasta", "fruits", "veggies"]
items
items[0]
items[2]

items[0]="chips"
items
items[0:2]
items[-1]

items=["bread", "pasta", "fruits", "veggies"]
items
items.append("butter")
items
items=["bread", "pasta", "fruits", "veggies"]
items
items.insert(1,'butter')
items

food=["bread", "pasta", "fruits"]
bathroom=["shampoo", "soap"]
items=food+bathroom
items
food+"soda"
# TypeError: can only concatenate list (not "str") to list
len(items)
"bread" in items
"soda" in items

# Exercise

months=['January','February','March','April','May']
expenses=[2200,2350,2600,2130,2190]

# a)
febJanuaryCompare=expenses[1] - expenses[0]
febJanuaryCompare

# b)
firstQuarterExpenses=expenses[0]+expenses[1]+expenses[2]
firstQuarterExpenses

# c)
2000 in expenses

# d)
months.append("June")
expenses.append(1980)

# e)
expenses[3]=expenses[3]-200
expenses
