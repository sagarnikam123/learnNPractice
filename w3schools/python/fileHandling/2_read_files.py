# Open a File on the Server

f = open('demofile.txt', 'r')
print(f.read())
###############################################################################
# Read Only Parts of the File

# Return the 5 first characters of the file
f = open('demofile.txt', 'r')
print(f.read(5))

# Read Lines
# Read two lines of the file
f = open('demofile.txt', 'r')
print(f.readline())
print(f.readline())

# Loop through the file line by line
f = open('demofile.txt', 'r')
for line in f:
    print(line)
###############################################################################
# Close Files-by reading multiple lines

f = open('demofile.txt', 'r')
print(f.readlines())
f.close()
###############################################################################
