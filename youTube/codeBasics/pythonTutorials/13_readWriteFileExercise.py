f2 = open('/home/quanta/git/learnNPractice/youTube/codeBasics/pythonTutorials/data/13_readWriteFileInput.txt', 'r')
g2 = open('/home/quanta/git/learnNPractice/youTube/codeBasics/pythonTutorials/data/13_readWriteFileInputSum.txt', 'w')

numberList = []

for m2 in f2:
    black_white = m2.rstrip('\n').split(',')
    few_sum = int(black_white[0]) + int(black_white[1])
    g2.write("sum: " + str(few_sum) + ' | ' + m2.rstrip('\n') + '\n')
    numberList += black_white
f2.close()
g2.close()


def count_num(num):
    total_count = 0
    for x in numberList:
        if int(x) == num:
            total_count += 1
    return total_count


def count_num2(num):
    return numberList.count(str(num))


print("countNum - 1")
print(count_num2(100))
print(count_num2(9))

print("countNum - 2")
print(count_num2(100))
print(count_num2(9))
