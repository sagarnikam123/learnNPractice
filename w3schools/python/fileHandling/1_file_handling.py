# File Open

# File Handling
# open(filename, mode)
"""
"r" - Read - Default value. Opens a file for reading,
            error if the file does not exist
"a" - Append - Opens a file for appending,
            creates the file if it does not exist
"w" - Write - Opens a file for writing, creates the file if it does not exist
"x" - Create - Creates the specified file, returns an error if the file exists
"t" - Text - Default value. Text mode
"b" - Binary - Binary mode (e.g. images)
"""

# open a file
f = open('demofile.txt')
f = open('demofile.txt', 'rt')
###############################################################################
