# Mandatory
# userId
# videoIdFilePath

from pytube import YouTube
import os
import re

################################################################################
#       Mandatory
################################################################################
userId = 'Marathi Sanket'
videoIdFilePath = '/home/quanta/marathiSanket/sanketMarathi'
channelDownloadFolder = '/home/quanta/marathiSanket' # (Optional)
################################################################################


uTubeStdURL = 'https://youtu.be/'
channelURL = ''
channelDownloadFolder = ''
videoId = ''

# if not given channelDownloadFolder
if not channelDownloadFolder:
    channelDownloadFolder = os.getcwd() + '/' + userId

# creating folder for channelDownloadFolder
if not os.path.isdir(channelDownloadFolder):
    os.makedirs(channelDownloadFolder)

# checking log folder exists in channelDownloadFolder
if not os.path.isdir(channelDownloadFolder+ '/log/'):
    os.makedirs(channelDownloadFolder + '/log/')


def downlodYouTubeVideo(uTubeURL, folderPath):
    ytObject = YouTube(uTubeURL)
    print('length - ', len(ytObject.title), end='   ')
    print(ytObject.title)
    allSetVideo = ytObject.streams.filter(progressive=True).order_by('resolution').desc().all()[0]
    allSetVideo.download(folderPath)


with open(videoIdFilePath, 'r') as file :
    for line in file:
        videoId = line.rstrip()
        uTubeURL = uTubeStdURL + videoId
        downlodYouTubeVideo(uTubeURL, channelDownloadFolder)
