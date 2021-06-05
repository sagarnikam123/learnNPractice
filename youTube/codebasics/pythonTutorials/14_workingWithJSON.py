# 14_Working With JSON

import json

book = {}

book['tom'] = {
    'name': 'tom',
    'address': '1 red street, NY',
    'phone': 98989898
}

book['bob'] = {
    'name': 'bob',
    'address': '1 green street, NY',
    'phone': 23424234
}

s = json.dumps(book)
print(s)

with open("/home/quanta/git/learnNPractice/youTube/codeBasics/pythonTutorials/data/14_workingWithJSONOutput.txt", 'w') as f:
    f.write(s)

f2 = open("/home/quanta/git/learnNPractice/youTube/codeBasics/pythonTutorials/data/14_workingWithJSONOutput.txt", 'r')
s = f2.read()
f2.close()

book_dict = json.loads(s)
print(type(book_dict))
print("Book dict/json: ", book_dict)

print(book_dict['bob'])
print(book_dict['bob']['phone'])

for person in book_dict:
    print(book[person])
