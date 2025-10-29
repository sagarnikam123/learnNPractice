# 11_file-crud

# opening a file
file = open('files/poem', 'r')
file.read()
file.close()

# reading file into a list
file = open('files/poem')
file.readlines()
file.close()

# looping via file
file = open('files/poem')

for line in file:
    print 'LINE : ', line

file.close()

# writing to a file
file = open('files/newfile', 'w')
file.close()

# appending to file
file = open('files/poem', 'a')
file.write('this is at the end of poem')
file.close()

# reading + writing (writing similar to append, but at start of file)
file = open('files/poem', 'r+')
file.write('Another end of line at poem --')
file.close()

# reading files as objects
with open('files/poem') as poem:
    poem.read()
# writtn as close file object
poem

# using module 'pickle'
import pickle

# writing using pickle
data = open('files/mydata.pkl', 'w')
cred = {'user': 'jesse', 'pass':'essej'}
pickle.dump(cred, data)
data.close()

# reading using pickle
data = open('files/mydata.pkl', 'r')
pickle.load(data)
data.close()
