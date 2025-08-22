# 13_ReadingWriting Files

f = open('/home/quanta/git/learnNPractice/youTube/codeBasics/pythonTutorials/data/funny.txt', 'w')
f.write('I Love Python')
f.close()
################################################################################

f = open('/home/quanta/git/learnNPractice/youTube/codeBasics/pythonTutorials/data/funny.txt', 'w')
f.write('I Love JavaScript')
f.close()
################################################################################

f = open('/home/quanta/git/learnNPractice/youTube/codeBasics/pythonTutorials/data/funny.txt', 'a')
f.write('\nI Love PHP')
f.close()
################################################################################

f = open('/home/quanta/git/learnNPractice/youTube/codeBasics/pythonTutorials/data/funny2.txt', 'r')
for line in f:
    print(line)
f.close()
################################################################################

f = open('/home/quanta/git/learnNPractice/youTube/codeBasics/pythonTutorials/data/funny2.txt', 'r')
f_out = open('/home/quanta/git/learnNPractice/youTube/codeBasics/pythonTutorials/data/funny_wc.txt', 'w')

for line in f:
    tokens = line.split(' ')
    f_out.write(' wordcount: ' + str( len(tokens)) + ' ' + line )

f.close()
f_out.close()
################################################################################

with open('/home/quanta/git/learnNPractice/youTube/codeBasics/pythonTutorials/data/funny2.txt', 'r') as f:
    print(f.read())

print(f.closed)
################################################################################
