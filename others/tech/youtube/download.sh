# yt-dlp

# 720
yt-dlp --format mp4 --download-archive $HOME/dw/download.list --batch-file $HOME/dw/list.download \
-o "$HOME/Documents/videos/%(title)s-%(id)s.%(ext)s" --compat-options filename-sanitization


yt-dlp --format mp4 --download-archive $HOME/dw/download.list --compat-options filename-sanitization \
--yes-playlist -o "$HOME/Documents/videos/%(playlist)s/%(playlist_index)s_%(title)s-%(id)s.%(ext)s" \
https://www.youtube.com/playlist?list=PLDqi6CuDzubz5viRapQ049TjJMOCCu9MJ
