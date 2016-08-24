#!/bin/bash
#
# build_android.sh
# Copyright (c) 2012 Jacek Marchwicki
#
# Licensed under the Apache License, Version 2.0 (the 'License');
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an 'AS IS' BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

NDK=C:/Users/jackyc58/AppData/Local/Android/sdk/android-ndk-r10e

if [ '$NDK' = '' ]; then
	echo NDK variable not set, exiting
	echo 'Use: export NDK=/your/path/to/android-ndk'
	exit 1
fi

#OS=`uname -s | tr '[A-Z]' '[a-z]'`
OS=windows-x86_64
FFMPEG_PATH=ffmpeg-3.0.2

#function build_x264
#{
#	PLATFORM=$NDK/platforms/$PLATFORM_VERSION/arch-$ARCH/
#	export PATH=${PATH}:$PREBUILT/bin/
#	CROSS_COMPILE=$PREBUILT/bin/$EABIARCH-
#	CFLAGS=$OPTIMIZE_CFLAGS
##CFLAGS=' -I$ARM_INC -fpic -DANDROID -fpic -mthumb-interwork -ffunction-sections -funwind-tables -fstack-protector -fno-short-enums -D__ARM_ARCH_5__ -D__ARM_ARCH_5T__ -D__ARM_ARCH_5E__ -D__ARM_ARCH_5TE__  -Wno-psabi -march=armv5te -mtune=xscale -msoft-float -mthumb -Os -fomit-frame-pointer -fno-strict-aliasing -finline-limit=64 -DANDROID  -Wa,--noexecstack -MMD -MP '
#	export CPPFLAGS='$CFLAGS'
#	export CFLAGS='$CFLAGS'
#	export CXXFLAGS='$CFLAGS'
#	export CXX='${CROSS_COMPILE}g++ --sysroot=$PLATFORM'
#	export AS='${CROSS_COMPILE}gcc --sysroot=$PLATFORM'
#	export CC='${CROSS_COMPILE}gcc --sysroot=$PLATFORM'
#	export NM='${CROSS_COMPILE}nm'
#	export STRIP='${CROSS_COMPILE}strip'
#	export RANLIB='${CROSS_COMPILE}ranlib'
#	export AR='${CROSS_COMPILE}ar'
#	export LDFLAGS='-Wl,-rpath-link=$PLATFORM/usr/lib -L$PLATFORM/usr/lib -nostdlib -lc -lm -ldl -llog'
#
#	cd x264
#	./configure --prefix=$(pwd)/$PREFIX --host=$ARCH-linux --enable-static $ADDITIONAL_CONFIGURE_FLAG || exit 1
#
#	make clean || exit 1
#	make -j4 install || exit 1
#	cd ..
#}

#function build_amr
#{
#	PLATFORM=$NDK/platforms/$PLATFORM_VERSION/arch-$ARCH/
#	export PATH=${PATH}:$PREBUILT/bin/
#	CROSS_COMPILE=$PREBUILT/bin/$EABIARCH-
#	CFLAGS=$OPTIMIZE_CFLAGS
##CFLAGS=' -I$ARM_INC -fpic -DANDROID -fpic -mthumb-interwork -ffunction-sections -funwind-tables -fstack-protector -fno-short-enums -D__ARM_ARCH_5__ -D__ARM_ARCH_5T__ -D__ARM_ARCH_5E__ -D__ARM_ARCH_5TE__  -Wno-psabi -march=armv5te -mtune=xscale -msoft-float -mthumb -Os -fomit-frame-pointer -fno-strict-aliasing -finline-limit=64 -DANDROID  -Wa,--noexecstack -MMD -MP '
#	export CPPFLAGS='$CFLAGS'
#	export CFLAGS='$CFLAGS'
#	export CXXFLAGS='$CFLAGS'
#	export CXX='${CROSS_COMPILE}g++ --sysroot=$PLATFORM'
#	export CC='${CROSS_COMPILE}gcc --sysroot=$PLATFORM'
#	export NM='${CROSS_COMPILE}nm'
#	export STRIP='${CROSS_COMPILE}strip'
#	export RANLIB='${CROSS_COMPILE}ranlib'
#	export AR='${CROSS_COMPILE}ar'
#	export LDFLAGS='-Wl,-rpath-link=$PLATFORM/usr/lib -L$PLATFORM/usr/lib -nostdlib -lc -lm -ldl -llog'
#
#	cd vo-amrwbenc
#	./configure \
#	    --prefix=$(pwd)/$PREFIX \
#	    --host=$ARCH-linux \
#	    --disable-dependency-tracking \
#	    --disable-shared \
#	    --enable-static \
#	    --with-pic \
#	    $ADDITIONAL_CONFIGURE_FLAG \
#	    || exit 1
#
#	make clean || exit 1
#	make -j4 install || exit 1
#	cd ..
#}
#
#function build_aac
#{
#	PLATFORM=$NDK/platforms/$PLATFORM_VERSION/arch-$ARCH/
#	export PATH=${PATH}:$PREBUILT/bin/
#	CROSS_COMPILE=$PREBUILT/bin/$EABIARCH-
#	CFLAGS=$OPTIMIZE_CFLAGS
##CFLAGS=' -I$ARM_INC -fpic -DANDROID -fpic -mthumb-interwork -ffunction-sections -funwind-tables -fstack-protector -fno-short-enums -D__ARM_ARCH_5__ -D__ARM_ARCH_5T__ -D__ARM_ARCH_5E__ -D__ARM_ARCH_5TE__  -Wno-psabi -march=armv5te -mtune=xscale -msoft-float -mthumb -Os -fomit-frame-pointer -fno-strict-aliasing -finline-limit=64 -DANDROID  -Wa,--noexecstack -MMD -MP '
#	export CPPFLAGS='$CFLAGS'
#	export CFLAGS='$CFLAGS'
#	export CXXFLAGS='$CFLAGS'
#	export CXX='${CROSS_COMPILE}g++ --sysroot=$PLATFORM'
#	export CC='${CROSS_COMPILE}gcc --sysroot=$PLATFORM'
#	export NM='${CROSS_COMPILE}nm'
#	export STRIP='${CROSS_COMPILE}strip'
#	export RANLIB='${CROSS_COMPILE}ranlib'
#	export AR='${CROSS_COMPILE}ar'
#	export LDFLAGS='-Wl,-rpath-link=$PLATFORM/usr/lib -L$PLATFORM/usr/lib -nostdlib -lc -lm -ldl -llog'
#
#	cd vo-aacenc
#	export PKG_CONFIG_LIBDIR=$(pwd)/$PREFIX/lib/pkgconfig/
#	export PKG_CONFIG_PATH=$(pwd)/$PREFIX/lib/pkgconfig/
#	./configure \
#	    --prefix=$(pwd)/$PREFIX \
#	    --host=$ARCH-linux \
#	    --disable-dependency-tracking \
#	    --disable-shared \
#	    --enable-static \
#	    --with-pic \
#	    $ADDITIONAL_CONFIGURE_FLAG \
#	    || exit 1
#
#	make clean || exit 1
#	make -j4 install || exit 1
#	cd ..
#}
#function build_freetype2
#{
#	PLATFORM=$NDK/platforms/$PLATFORM_VERSION/arch-$ARCH/
#	export PATH=${PATH}:$PREBUILT/bin/
#	CROSS_COMPILE=$PREBUILT/bin/$EABIARCH-
#	CFLAGS=$OPTIMIZE_CFLAGS
##CFLAGS=' -I$ARM_INC -fpic -DANDROID -fpic -mthumb-interwork -ffunction-sections -funwind-tables -fstack-protector -fno-short-enums -D__ARM_ARCH_5__ -D__ARM_ARCH_5T__ -D__ARM_ARCH_5E__ -D__ARM_ARCH_5TE__  -Wno-psabi -march=armv5te -mtune=xscale -msoft-float -mthumb -Os -fomit-frame-pointer -fno-strict-aliasing -finline-limit=64 -DANDROID  -Wa,--noexecstack -MMD -MP '
#	export CPPFLAGS='$CFLAGS'
#	export CFLAGS='$CFLAGS'
#	export CXXFLAGS='$CFLAGS'
#	export CXX='${CROSS_COMPILE}g++ --sysroot=$PLATFORM'
#	export CC='${CROSS_COMPILE}gcc --sysroot=$PLATFORM'
#	export NM='${CROSS_COMPILE}nm'
#	export STRIP='${CROSS_COMPILE}strip'
#	export RANLIB='${CROSS_COMPILE}ranlib'
#	export AR='${CROSS_COMPILE}ar'
#	export LDFLAGS='-Wl,-rpath-link=$PLATFORM/usr/lib -L$PLATFORM/usr/lib  -nostdlib -lc -lm -ldl -llog'
#
#	cd freetype2
#	export PKG_CONFIG_LIBDIR=$(pwd)/$PREFIX/lib/pkgconfig/
#	export PKG_CONFIG_PATH=$(pwd)/$PREFIX/lib/pkgconfig/
#	./configure \
#	    --prefix=$(pwd)/$PREFIX \
#	    --host=$ARCH-linux \
#	    --disable-dependency-tracking \
#	    --disable-shared \
#	    --enable-static \
#	    --with-pic \
#	    $ADDITIONAL_CONFIGURE_FLAG \
#	    || exit 1
#
#	make clean || exit 1
#	make -j4 install || exit 1
#	cd ..
#}
#function build_ass
#{
#	PLATFORM=$NDK/platforms/$PLATFORM_VERSION/arch-$ARCH/
#	export PATH=${PATH}:$PREBUILT/bin/
#	CROSS_COMPILE=$PREBUILT/bin/$EABIARCH-
#	CFLAGS='$OPTIMIZE_CFLAGS'
##CFLAGS=' -I$ARM_INC -fpic -DANDROID -fpic -mthumb-interwork -ffunction-sections -funwind-tables -fstack-protector -fno-short-enums -D__ARM_ARCH_5__ -D__ARM_ARCH_5T__ -D__ARM_ARCH_5E__ -D__ARM_ARCH_5TE__  -Wno-psabi -march=armv5te -mtune=xscale -msoft-float -mthumb -Os -fomit-frame-pointer -fno-strict-aliasing -finline-limit=64 -DANDROID  -Wa,--noexecstack -MMD -MP '
#	export CPPFLAGS='$CFLAGS'
#	export CFLAGS='$CFLAGS'
#	export CXXFLAGS='$CFLAGS'
#	export CXX='${CROSS_COMPILE}g++ --sysroot=$PLATFORM'
#	export CC='${CROSS_COMPILE}gcc --sysroot=$PLATFORM'
#	export NM='${CROSS_COMPILE}nm'
#	export STRIP='${CROSS_COMPILE}strip'
#	export RANLIB='${CROSS_COMPILE}ranlib'
#	export AR='${CROSS_COMPILE}ar'
#	export LDFLAGS='-Wl,-rpath-link=$PLATFORM/usr/lib -L$PLATFORM/usr/lib  -nostdlib -lc -lm -ldl -llog'
#
#	cd libass
#	export PKG_CONFIG_LIBDIR=$(pwd)/$PREFIX/lib/pkgconfig/
#	export PKG_CONFIG_PATH=$(pwd)/$PREFIX/lib/pkgconfig/
#	./configure \
#	    --prefix=$(pwd)/$PREFIX \
#	    --host=$ARCH-linux \
#	    --disable-fontconfig \
#	    --disable-dependency-tracking \
#	    --disable-shared \
#	    --enable-static \
#	    --with-pic \
#	    $ADDITIONAL_CONFIGURE_FLAG \
#	    || exit 1
#
#	make clean || exit 1
#	make V=1 -j4 install || exit 1
#	cd ..
#}
#function build_fribidi
#{
#	PLATFORM=$NDK/platforms/$PLATFORM_VERSION/arch-$ARCH/
#	export PATH=${PATH}:$PREBUILT/bin/
#	CROSS_COMPILE=$PREBUILT/bin/$EABIARCH-
#	CFLAGS='$OPTIMIZE_CFLAGS -std=gnu99'
##CFLAGS=' -I$ARM_INC -fpic -DANDROID -fpic -mthumb-interwork -ffunction-sections -funwind-tables -fstack-protector -fno-short-enums -D__ARM_ARCH_5__ -D__ARM_ARCH_5T__ -D__ARM_ARCH_5E__ -D__ARM_ARCH_5TE__  -Wno-psabi -march=armv5te -mtune=xscale -msoft-float -mthumb -Os -fomit-frame-pointer -fno-strict-aliasing -finline-limit=64 -DANDROID  -Wa,--noexecstack -MMD -MP '
#	export CPPFLAGS='$CFLAGS'
#	export CFLAGS='$CFLAGS'
#	export CXXFLAGS='$CFLAGS'
#	export CXX='${CROSS_COMPILE}g++ --sysroot=$PLATFORM'
#	export CC='${CROSS_COMPILE}gcc --sysroot=$PLATFORM'
#	export NM='${CROSS_COMPILE}nm'
#	export STRIP='${CROSS_COMPILE}strip'
#	export RANLIB='${CROSS_COMPILE}ranlib'
#	export AR='${CROSS_COMPILE}ar'
#	export LDFLAGS='-Wl,-rpath-link=$PLATFORM/usr/lib -L$PLATFORM/usr/lib -nostdlib -lc -lm -ldl -llog'
#
#	cd fribidi
#	./configure \
#	    --prefix=$(pwd)/$PREFIX \
#	    --host=$ARCH-linux \
#	    --disable-bin \
#	    --disable-dependency-tracking \
#	    --disable-shared \
#	    --enable-static \
#	    --with-pic \
#	    $ADDITIONAL_CONFIGURE_FLAG \
#	    || exit 1
#
#	make clean || exit 1
#	make -j4 install || exit 1
#	cd ..
#}

function build_ffmpeg
{
	PLATFORM=$NDK/platforms/$PLATFORM_VERSION/arch-$ARCH/
	CC=$PREBUILT/bin/$EABIARCH-gcc
	CROSS_PREFIX=$PREBUILT/bin/$EABIARCH-
	PKG_CONFIG=${CROSS_PREFIX}pkg-config
	if [ ! -f $PKG_CONFIG ];
	then
		cat > $PKG_CONFIG << EOF
#!/bin/bash
pkg-config \$*
EOF
		chmod u+x $PKG_CONFIG
	fi
	NM=$PREBUILT/bin/$EABIARCH-nm
	cd $FFMPEG_PATH
	export PKG_CONFIG_LIBDIR=$(pwd)/$PREFIX/lib/pkgconfig/
	export PKG_CONFIG_PATH=$(pwd)/$PREFIX/lib/pkgconfig/
	./configure --target-os=linux \
	    --prefix=$PREFIX \
	    --disable-shared \
	    --enable-static \
	    --disable-doc \
	    --disable-ffplay \
	    --disable-ffmpeg \
	    --disable-ffprobe \
	    --disable-ffserver \
	    --disable-avdevice \
		--disable-symver \
		--cross-prefix=$CROSS_PREFIX \
	    --enable-cross-compile \
	    --arch=$ARCH \
	    --sysroot=$PLATFORM \
	    --extra-cflags="$OPTIMIZE_CFLAGS" \
	    --extra-ldflags="$LDFLAGS" \
		--disable-everything \
	    --enable-demuxer=rtsp \
	    --enable-decoder=mjpeg \
	    --enable-decoder=mp3 \
	    $ADDITIONAL_CONFIGURE_FLAG \
	    || exit 1
	make clean || exit 1
	make -j4 install || exit 1

	cd ..
}

function build_one {
	cd $FFMPEG_PATH
	PLATFORM=$NDK/platforms/$PLATFORM_VERSION/arch-$ARCH

	$PREBUILT/bin/$EABIARCH-ld -rpath-link=$PLATFORM/usr/$LD_LIB -L$PLATFORM/usr/$LD_LIB -L$PREFIX/lib -soname $SONAME -shared -nostdlib  -z noexecstack -Bsymbolic --whole-archive --no-undefined -o $OUT_LIBRARY libavutil/libavutil.a libavcodec/libavcodec.a libavfilter/libavfilter.a libavformat/libavformat.a libswscale/libswscale.a libswresample/libswresample.a -lc -lm -lz -ldl -llog  --dynamic-linker=/system/bin/linker -zmuldefs $PREBUILT/lib/gcc/$EABIARCH/4.9/libgcc.a || exit 1

	cd ..
}

#arm v5
EABIARCH=arm-linux-androideabi
ARCH=arm
CPU=armv5
BASE_CFLAGS=' -O3 -fpic -DANDROID -DHAVE_SYS_UIO_H=1 -Dipv6mr_interface=ipv6mr_ifindex -fasm -Wno-psabi -fno-short-enums  -fno-strict-aliasing -finline-limit=300 '
OPTIMIZE_CFLAGS="$BASE_CFLAGS -marm -march=$CPU"
LDFLAGS='-I$PREFIX/include'
PREFIX=../libs/armeabi
OUT_LIBRARY=$PREFIX/libffmpeg.so
ADDITIONAL_CONFIGURE_FLAG=
SONAME=libffmpeg.so
PREBUILT=$NDK/toolchains/arm-linux-androideabi-4.9/prebuilt/$OS
PLATFORM_VERSION=android-16
LD_LIB=lib
#build_amr
#build_aac
#build_fribidi
#build_freetype2
#build_ass
build_ffmpeg
build_one


#x86
EABIARCH=i686-linux-android
ARCH=x86
BASE_CFLAGS='-std=c99 -O3 -Wall -fpic -pipe -DANDROID -DNDEBUG'
OPTIMIZE_CFLAGS="$BASE_CFLAGS -march=i686 -mtune=intel -mssse3 -mfpmath=sse -m32"
#OPTIMIZE_CFLAGS="$BASE_CFLAGS -march=atom -msse3 -ffast-math -mfpmath=sse"
LDFLAGS='-lm -lz -Wl,--no-undefined -Wl,-z,noexecstack'
PREFIX=../libs/x86
OUT_LIBRARY=$PREFIX/libffmpeg.so
ADDITIONAL_CONFIGURE_FLAG='--disable-yasm'
SONAME=libffmpeg.so
PREBUILT=$NDK/toolchains/x86-4.9/prebuilt/$OS
PLATFORM_VERSION=android-16
LD_LIB=lib
#build_amr
#build_aac
#build_fribidi
#build_freetype2
#build_ass
build_ffmpeg
build_one

#x86_64
EABIARCH=x86_64-linux-android
ARCH=x86_64
BASE_CFLAGS='-std=c99 -O3 -Wall -fpic -pipe -DANDROID -DNDEBUG'
OPTIMIZE_CFLAGS="$BASE_CFLAGS -march=x86-64 -msse4.2 -mpopcnt -m64 -mtune=intel"
LDFLAGS='-lm -lz -Wl,--no-undefined -Wl,-z,noexecstack'
PREFIX=../libs/x86_64
OUT_LIBRARY=$PREFIX/libffmpeg.so
ADDITIONAL_CONFIGURE_FLAG='--disable-yasm'
SONAME=libffmpeg.so
PREBUILT=$NDK/toolchains/x86_64-4.9/prebuilt/$OS
PLATFORM_VERSION=android-21
LD_LIB=lib64
#build_amr
#build_aac
#build_fribidi
#build_freetype2
#build_ass
build_ffmpeg
build_one

##mips
#EABIARCH=mipsel-linux-android
#ARCH=mips
#OPTIMIZE_CFLAGS="-EL -march=mips32 -mips32 -mhard-float"
#PREFIX=../libs/mips
#OUT_LIBRARY=$PREFIX/libffmpeg.so
#ADDITIONAL_CONFIGURE_FLAG="--disable-mips32r2"
#SONAME=libffmpeg.so
#PREBUILT=$NDK/toolchains/mipsel-linux-android-4.4.3/prebuilt/$OS-x86
#PLATFORM_VERSION=android-16
#build_amr
#build_aac
#build_fribidi
#build_freetype2
#build_ass
#build_ffmpeg
#build_one
#
##arm v7vfpv3
#EABIARCH=arm-linux-androideabi
#ARCH=arm
#CPU=armv7-a
#OPTIMIZE_CFLAGS=" -O3 -fpic -DANDROID -DHAVE_SYS_UIO_H=1 -Dipv6mr_interface=ipv6mr_ifindex -fasm -Wno-psabi -fno-short-enums  -fno-strict-aliasing -finline-limit=300 -mfloat-abi=softfp -mfpu=vfpv3-d16 -marm -march=$CPU "
#PREFIX=../libs/armeabi-v7a
#OUT_LIBRARY=$PREFIX/libffmpeg.so
#ADDITIONAL_CONFIGURE_FLAG=
#SONAME=libffmpeg.so
#PREBUILT=$NDK/toolchains/arm-linux-androideabi-4.9/prebuilt/$OS
#PLATFORM_VERSION=android-16
##build_amr
##build_aac
##build_fribidi
##build_freetype2
##build_ass
#build_ffmpeg
#build_one



#arm v7 + neon (neon also include vfpv3-32)
EABIARCH=arm-linux-androideabi
ARCH=arm
CPU=armv7-a
BASE_CFLAGS=' -O3 -fpic -DANDROID -DHAVE_SYS_UIO_H=1 -Dipv6mr_interface=ipv6mr_ifindex -fasm -Wno-psabi -fno-short-enums  -fno-strict-aliasing -finline-limit=300 '
OPTIMIZE_CFLAGS="$BASE_CFLAGS -mfloat-abi=softfp -mfpu=neon -marm -march=$CPU -mtune=cortex-a8 -mthumb -D__thumb__ "
LDFLAGS='-I$PREFIX/include'
PREFIX=../libs/armeabi-v7a
OUT_LIBRARY=../libs/armeabi-v7a/libffmpeg.so
ADDITIONAL_CONFIGURE_FLAG=--enable-neon
SONAME=libffmpeg.so
PREBUILT=$NDK/toolchains/arm-linux-androideabi-4.9/prebuilt/$OS
PLATFORM_VERSION=android-16
LD_LIB=lib
#build_amr
#build_aac
#build_fribidi
#build_freetype2
#build_ass
build_ffmpeg
build_one
