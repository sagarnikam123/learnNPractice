# yt-dlp

# 720
yt-dlp --format mp4 --download-archive $HOME/dw/download.list --batch-file $HOME/dw/list.720.download \
-o "$HOME/Documents/videos/%(title)s-%(id)s.%(ext)s" --compat-options filename-sanitization


yt-dlp --format mp4 --download-archive $HOME/dw/download.list --compat-options filename-sanitization \
--yes-playlist -o "$HOME/Documents/videos/%(playlist)s/%(playlist_index)s_%(title)s-%(id)s.%(ext)s" \
https://www.youtube.com/playlist?list=PLxNYxgaZ8Rscf-XJ5VfXgbDAk1vL4xaMl

# 1080
yt-dlp -f "bv*[ext=mp4]+ba[ext=m4a]/b[ext=mp4]" --download-archive $HOME/dw/download.list --batch-file $HOME/dw/list.1080.download \
-o "$HOME/Documents/videos/%(title)s-%(id)s.%(ext)s" --compat-options filename-sanitization
