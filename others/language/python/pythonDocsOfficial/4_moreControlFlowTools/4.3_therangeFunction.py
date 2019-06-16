# 4.3. The range() Function

for i in range(5):
    print(i)

list(range(5, 10))
list(range(0, 10, 3))
list(range(-10, -100, -30)) # specify a different increment (even negative; sometimes this is called the ‘step’):
list(range(0, -100, -30))

a = ['Mary', 'had', 'a', 'little', 'lamb']
a
for i in range(len(a)):
    print(i, a[i])

print(range(10))
list(range(5))
