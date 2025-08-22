# yt-dlp

# 720
yt-dlp --format "bestvideo[height=720][ext=mp4]+bestaudio[ext=m4a]/best[height=720]" \
--download-archive $HOME/dw/download.archive --batch-file $HOME/dw/720.download.list \
--sleep-interval 5 --max-sleep-interval 15 \
--extractor-args "youtube:player-client=default,-tv,web_safari,web_embedded" \
-o "$HOME/Documents/videos/%(title)s-%(id)s.%(ext)s" --compat-options filename-sanitization

# playlist-720
yt-dlp --format mp4 --download-archive $HOME/dw/download.archive --compat-options filename-sanitization \
--sleep-interval 5 --max-sleep-interval 15 \
--extractor-args "youtube:player-client=default,-tv,web_safari,web_embedded" \
--yes-playlist -o "$HOME/Documents/videos/%(playlist)s/%(playlist_index)s-%(title)s-%(id)s.%(ext)s" \
https://www.youtube.com/playlist?list=PLjyuVPBuorqJb1AwUu-wh61cLWMBVWS3N

# 1080
yt-dlp -f "bv*[height=1080][ext=mp4]+ba[ext=m4a]/b[ext=mp4]" --download-archive $HOME/dw/download.archive \
--sleep-interval 5 --max-sleep-interval 15 \
--batch-file $HOME/dw/1080.download.list -S "res:1080" \
--extractor-args "youtube:player-client=default,-tv,web_safari,web_embedded" \
-o "$HOME/Documents/videos/%(title)s-%(id)s.%(ext)s" --compat-options filename-sanitization

# playlist-1080
yt-dlp -f "bv*[ext=mp4]+ba[ext=m4a]/b[ext=mp4]" --download-archive $HOME/dw/download.archive \
--sleep-interval 5 --max-sleep-interval 15 \
-S "res:1080" --compat-options filename-sanitization \
--extractor-args "youtube:player-client=default,-tv,web_safari,web_embedded" \
--yes-playlist -o "$HOME/Documents/videos/%(playlist)s/%(playlist_index)s-%(title)s-%(id)s.%(ext)s" \
https://www.youtube.com/playlist?list=PLjyuVPBuorqJb1AwUu-wh61cLWMBVWS3N
########################################################################################################################
