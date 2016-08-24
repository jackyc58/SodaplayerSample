# SodaplayerSample

This is Android app, it from https://github.com/sodapanda/sodaplayer; 
I export to Android Studio from Eclipse IDE.
It has some bug.

Setup

1. Downlaod ffmpeg-3.0.2 source code: Download and decompress, then move to /SodaplayerSample/sodaPlayer/src/main/jni/
2. Download Android NDK r10e.
3. Modify file build_android_ndk_r10e.sh and make sure NDK path on /SodaplayerSample/sodaPlayer/src/main/jni/.
4. Compiler ffmpeg: Use MinGW, run msys.bat, and change folder to build_android_ndk_r10e.sh local in terminal, then RUN build_android_ndk_r10e.sh
5. Copy libs/xxx/include/* to inclued on /SodaplayerSample/sodaPlayer/src/main/jni/
6. Build JNI


Test plan:

1. Server: Use VLC make stream server, you can set http or rtsp protocol.
2. Client: Open app and input network path, ex. http://IP:8080 or rtsp://IP:8554


Reference:

1. NDK and JNI <br>
http://blog.xuite.net/lwchafter30/blog/373974237-Android+studio+1.5.1+NDK+JNI%E7%92%B0%E5%A2%83%E5%AE%89%E8%A3%9D%E8%88%87%E5%9F%B7%E8%A1%8C%E5%8E%9F%E7%90%86
https://8085studio.wordpress.com/2015/04/25/android-studio-ndk-jni/

2. FFmpeg compiler shell
http://zheteng.me/android/2016/05/25/build-ffmpeg-for-android-with-x264/

