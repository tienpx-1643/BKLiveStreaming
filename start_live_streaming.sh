find /path . -name '*.ts' -type f -delete
ffmpeg -stream_loop -1 -re -i bunny.mp4 -c:v libx264 \
          -x264opts keyint=30:min-keyint=30:scenecut=-1 \
          -tune zerolatency -s 1280x720 \
          -b:v 1400k -bufsize 1400k \
          -hls_start_number_source epoch -f hls stream.m3u8