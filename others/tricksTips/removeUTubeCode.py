import glob
import os

delete_code_list = [] # contains 11 digit code list (youtube DLaDH2bi8WM)
PATH = '/media/tetra/Capillary/youTube/brightSide'

for x in os.walk(PATH):
    for y in glob.glob(os.path.join(x[0], '*.mp4')):
        delete_code_list.append('youtube '+ y[-15:-4])

#for code_line in delete_code_list:
#	print(code_line)
##########################################################
infile = "/home/tetra/Dropbox/downloadArchive/uTubeDownloadArchive/youtube_archive"
outfile = "/home/tetra/Dropbox/downloadArchive/uTubeDownloadArchive/youtube_archive_clean"


with open(infile) as fin, open(outfile, "w+") as fout:
    for line in fin:
        for word in delete_code_list:
            line = line.replace(word, "")
        if not line.isspace():
            fout.write(line)
