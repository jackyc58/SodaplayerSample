# SodaplayerSample

This is Android app, it from https://github.com/sodapanda/sodaplayer; 
I export to Android Studio from Eclipse IDE.
It has some bug.

<br>
<b>Setup:</b>

1. Downlaod ffmpeg-3.0.2 source code: Download and decompress, then move to /SodaplayerSample/sodaPlayer/src/main/jni/
2. Download Android NDK r10e.
3. Modify file build_android_ndk_r10e.sh and make sure NDK path on /SodaplayerSample/sodaPlayer/src/main/jni/.
4. Compiler ffmpeg: Use MinGW, run msys.bat, and change folder to build_android_ndk_r10e.sh local in terminal, then RUN build_android_ndk_r10e.sh
5. Copy libs/xxx/include/* to inclued on /SodaplayerSample/sodaPlayer/src/main/jni/
6. Build JNI<br>
7. Android compiler.

<br><br>
<b>Test plan:</b>

1. Server: Use VLC make stream server, you can set http or rtsp protocol.<br>
2. Client: Open app and input network path, ex. http://IP:8080 or rtsp://IP:8554<br>

<br><br>
<b>Reference:</b>

1. NDK and JNI <br>
<a href="http://blog.xuite.net/lwchafter30/blog/373974237-Android+studio+1.5.1+NDK+JNI%E7%92%B0%E5%A2%83%E5%AE%89%E8%A3%9D%E8%88%87%E5%9F%B7%E8%A1%8C%E5%8E%9F%E7%90%86">Android studio 1.5.1 NDK JNI環境安裝與執行原理</a><br>
<a href="https://8085studio.wordpress.com/2015/04/25/android-studio-ndk-jni/">Android筆記: Android Studio + NDK + JNI</a><br>
<br>
2. FFmpeg compiler shell<br>
<a href="http://zheteng.me/android/2016/05/25/build-ffmpeg-for-android-with-x264/">Mac下为Android编译FFMPEG和x264 （一）</a>



