sudo ffmpeg-3.1.4 -f v4l2 -channel 0 -video_size 1920x1080 -i /dev/video0 -pix_fmt nv12 -r 22 -c:v cedrus264 night_video_test4_1920x1080.mp4
