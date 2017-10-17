# 9_for

exp = [2340, 2500, 2100, 3100, 2980]
# total = exp[0] + exp[1] + exp[2] + exp[3] + exp[4]

total=0
for item in exp:
    total = total + item
print(total)
################################################################################

for i in range(1,11):
    print(i*i)
################################################################################

total=0
for i in range(len(exp)):
    print("Month: ", (i+1), "Expenses: ", exp[i])
    total = total + exp[i]
print("Total expense is: ", total)
################################################################################

key_location="chair"
locations=["garage", "living room", "chair", "closet"]

for i in locations:
    if i==key_location:
        print("key is found in", i)
        break
    else:
        print("key is not found in", i)
################################################################################

for i in range(1, 6):
    if i % 2 == 0:
        continue
    print(i * i)
################################################################################

i = 1
while i <= 5:
    print(i)
    i = i + 1
################################################################################


# Exercise

#1
result = ["heads", "tails", "tails", "heads", "tails", "heads", "heads", "tails", "tails", "tails"]
headsCount = 0
for x in result:
    if x == "heads":
        headsCount += 1

print("Total 'heads' count", headsCount)

# 2
expense_list = [2340, 2500, 2100, 3100, 2980]

expenseAmount = input("Enter expense amount: ")
expenseAmount = int(expenseAmount)

month = 1

for exp in expense_list:
    if exp == expenseAmount:
        print("Month in which expense occured ", month)
    month += 1

# 3
for i in range(1, 6):
    for j in range(0, i):
        print("*", end="")
    print("\n")
