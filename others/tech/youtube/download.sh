# yt-dlp

# 720
yt-dlp --format mp4 --download-archive $HOME/dw/download.list --batch-file $HOME/dw/list.720.download \
--sleep-interval 3 \
-o "$HOME/Documents/videos/%(title)s-%(id)s.%(ext)s" --compat-options filename-sanitization

# playlist-720
yt-dlp --format mp4 --download-archive $HOME/dw/download.list --compat-options filename-sanitization \
--sleep-interval 5 \
--yes-playlist -o "$HOME/Documents/videos/%(playlist)s/%(playlist_index)s-%(title)s-%(id)s.%(ext)s" \
https://www.youtube.com/playlist?list=PLjyuVPBuorqJb1AwUu-wh61cLWMBVWS3N

# 1080
yt-dlp -f "bv*[ext=mp4]+ba[ext=m4a]/b[ext=mp4]" --download-archive $HOME/dw/download.list \
--sleep-interval 5 \
--batch-file $HOME/dw/list.1080.download -S "res:1080" \
-o "$HOME/Documents/videos/%(title)s-%(id)s.%(ext)s" --compat-options filename-sanitization

# playlist-1080
yt-dlp -f "bv*[ext=mp4]+ba[ext=m4a]/b[ext=mp4]" --download-archive $HOME/dw/download.list \
--sleep-interval 5 -S "res:1080" --compat-options filename-sanitization \
--yes-playlist -o "$HOME/Documents/videos/%(playlist)s/%(playlist_index)s-%(title)s-%(id)s.%(ext)s" \
https://www.youtube.com/playlist?list=PLjyuVPBuorqJb1AwUu-wh61cLWMBVWS3N
