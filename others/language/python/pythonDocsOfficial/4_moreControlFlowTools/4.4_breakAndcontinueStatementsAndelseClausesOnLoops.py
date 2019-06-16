# 4.4. break and continue Statements, and else Clauses on Loops

# Loop statements may have an else clause; it is executed when the loop terminates
# through exhaustion of the list (with for) or when the condition becomes false (with while),
# but not when the loop is terminated by a break statement.

for n in range(2,10):
    for x in range(2, n):
        if n % x == 0:
            print(n, 'equals', x, '*', n//x)
            break
    else:
        # loop fell through without finding a factor
        print(n, 'is a prime number')

# a try statement’s else clause runs when no exception occurs, and a loop’s else clause runs when no break occurs.
for num in range(2, 10):
    if num % 2 == 0:
        print("Found an even number", num)
        continue
    print("Found a number", num)
