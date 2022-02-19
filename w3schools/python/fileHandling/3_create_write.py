# File Write/Create

# Write to an Existing File
"""
"a" - Append - will append to the end of the file
"w" - Write - will overwrite any existing content
"""
f = open("demofile2.txt", "a")
f.write("Now the file has more content!")
f.close()

# open and read the file after the appending
f = open("demofile2.txt", "r")
print(f.read())
f.close()

# Open the file "demofile3.txt" and overwrite the content
f = open("demofile3.txt", "w")
f.write("Woops! I hae deleted the content!")
f.close()

# open and read the file after the appending
f = open("demofile3.txt", "r")
print(f.read())
f.close()
###############################################################################
# Create a New File
"""
"x" - Create - will create a file, returns an error if the file exist
"a" - Append - will create a file if the specified file does not exist
"w" - Write - will create a file if the specified file does not exist
"""
# Create a file called "myfile.txt":
f = open("myfile.txt", "x")
f.close()

# Create a new file if it does not exist
f = open("myfile.txt", "w")
f.close()
###############################################################################
