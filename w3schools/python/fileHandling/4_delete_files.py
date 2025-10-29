# Delete a File

# Remove the file "demofile.txt"
import os
os.remove('demofile.txt')
###############################################################################
# Check if File exist
if(os.path.exists('demofile.txt')):
    os.remove('demofile.txt')
else:
    print('The file does not exists')
###############################################################################
# Delete Folder
os.makedirs('myfolder')
os.rmdir('myfolder')  # can only remove empty folders
###############################################################################
