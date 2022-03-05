# moves subtitles files (.srt or .vtt) to respective folders

import glob
import os
import shutil

#settings
courseName ='/home/tetra/Desktop/course1'
subtitleExt = 'srt' # 'vtt'
subtitleDepositDir='subtitles'

# change directory to given course
os.chdir(courseName)

# make subtitle folder if not exists
if not os.path.isdir(subtitleDepositDir):
    os.makedirs(subtitleDepositDir)

# get directory names
for dirNames in next(os.walk(os.getcwd())):
    #print(dirNames) # all directories as list
    for singleFolder in dirNames:
        # find list of all files with sp. extension
        for fileToMove in glob.glob(singleFolder + '/*.' + subtitleExt):
            #print(fileToMove)
            #moving subtitle files to subtitleDepositDir
            # making folder before moving
            finalDepositFolder=subtitleDepositDir + '/' + singleFolder
            if not os.path.isdir(finalDepositFolder):
                os.makedirs(finalDepositFolder)
                #print(finalDepositFolder)
            shutil.move(fileToMove, finalDepositFolder)
