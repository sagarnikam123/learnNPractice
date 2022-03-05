line = 'HELLO' # given string

list_line = list(line)
print('Before-', list_line)

i = 0
j = len(list_line)-1
while i <= j:
    first = list_line[i]
    list_line[i] = list_line[j]
    list_line[j] = first
    i += 1
    j -= 1

print('After -', list_line)
