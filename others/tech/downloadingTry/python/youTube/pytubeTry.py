# https://github.com/nficano/pytube

from pytube import YouTube

yt = YouTube('https://www.youtube.com/watch?v=9bZkp7q19f0')
yt = YouTube('https://www.youtube.com/watch?v=QE_fndtumDA')
yt.title
yt.thumbnail_url

# available media formats
yt.streams.all()


yt.streams.filter(progressive=True).all()
yt.streams.filter(file_extension='mp4').all()

myVideo = yt.streams.filter(progressive=True).order_by('resolution').desc().all()[0]
myVideo.download('/home/quanta/Desktop/bProjects')


# https://youtube.com/watch?v=video_id
# https://youtube.com/embed/video_id
# https://youtu.be/video_id


https://youtu.be/_9OpUvPoXoY
