
# #https://www.youtube.com/user/user_id/videos
youtube-dl --get-url https://www.youtube.com/user/PenIndiaPvtLimited/videos
youtube-dl --get-id --get-filename https://www.youtube.com/user/PenIndiaPvtLimited/videos
youtube-dl --get-id --get-format https://www.youtube.com/user/PenIndiaPvtLimited/videos
youtube-dl --get-id -J https://www.youtube.com/watch?v=9bZkp7q19f0


# https://youtube.com/watch?v=video_id
# https://youtube.com/embed/video_id
# https://youtu.be/video_id

https://youtu.be/3cOO7FZW1xc

# getting video id of YouTube channel
youtube-dl --get-id https://www.youtube.com/user/neilvkpatel/videos >> neilPatel
youtube-dl --format mp4 https://www.youtube.com/user/neilvkpatel/videos
youtube-dl --format mp4  --encoding utf-8 https://www.youtube.com/channel/UC4urAVbaOZmI5YSqbA_mntw/videos
youtube-dl --get-id https://www.youtube.com/channel/UC4urAVbaOZmI5YSqbA_mntw/videos >> sanketMarathi

# downloading a playlist
youtube-dl --format mp4 --yes-playlist https://www.youtube.com/playlist?list=PLQVvvaa0QuDeF3hP0wQoSxpkqgRcgxMqX
