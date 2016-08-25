# SodaplayerSample

This is Android app, it from https://github.com/sodapanda/sodaplayer; 
I export to Android Studio from Eclipse IDE.
It has some bug.

<br>
<b>Setup:</b>

1. Get <a href="https://www.ffmpeg.org/download.html">ffmpeg-3.0.2</a> source code: Download and decompress, then move to SodaplayerSample/sodaPlayer/src/main/jni/
2. Download Android NDK r10e.(Platform 
<a href="http://dl.google.com/android/ndk/android-ndk-r10e-windows-x86.exe">Windows 32-bit</a>, 
<a href="http://dl.google.com/android/ndk/android-ndk-r10e-windows-x86_64.exe">Windows 64-bit</a>, 
<a href="http://dl.google.com/android/ndk/android-ndk-r10e-darwin-x86_64.bin">Mac OS X 64-bit</a>, 
<a href="http://dl.google.com/android/ndk/android-ndk-r10e-darwin-x86.bin">Mac OS X 32-bit</a>, 
<a href="http://dl.google.com/android/ndk/android-ndk-r10e-linux-x86.bin">Linux 32-bit (x86)</a>, 
<a href="http://dl.google.com/android/ndk/android-ndk-r10e-linux-x86_64.bin">Linux 64-bit (x86)</a>).
3. Modify file <p style="color:blud;">build_android_ndk_r10e.sh</p> and make sure NDK path on SodaplayerSample/sodaPlayer/src/main/jni/.
4. Compiler ffmpeg: Use MinGW, run msys.bat, and change folder to build_android_ndk_r10e.sh local in terminal, then RUN build_android_ndk_r10e.sh
5. Copy libs/xxx/include/* to include/ on SodaplayerSample/sodaPlayer/src/main/jni/
6. Build JNI<br>
7. Android compiler.

<br>
<b>Test plan:</b>

1. Server: Use VLC make stream server, you can set http or rtsp protocol.<br>
2. Client: Open app and input network path, ex. http://IP:8080 or rtsp://IP:8554

<br>
<b>Reference:</b>

1. NDK and JNI <br>
<a href="http://blog.xuite.net/lwchafter30/blog/373974237-Android+studio+1.5.1+NDK+JNI%E7%92%B0%E5%A2%83%E5%AE%89%E8%A3%9D%E8%88%87%E5%9F%B7%E8%A1%8C%E5%8E%9F%E7%90%86">Android studio 1.5.1 NDK JNI環境安裝與執行原理</a><br>
<a href="https://8085studio.wordpress.com/2015/04/25/android-studio-ndk-jni/">Android筆記: Android Studio + NDK + JNI</a><br>
<br>
2. FFmpeg compiler shell<br>
<a href="http://zheteng.me/android/2016/05/25/build-ffmpeg-for-android-with-x264/">Mac下为Android编译FFMPEG和x264 （一）</a>

<br>
<b>Others</b>

<a href="http://markdown.tw/">Markdown文件</a>



