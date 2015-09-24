#!/bin/bash

./configure \
	--enable-shared \
	--prefix=$(pwd)/android/arm \
	--disable-programs \
	--disable-doc  \
	--arch=arm \
	--target-os=android \
	--enable-cross-compile \
	--cross-prefix=/home/hicks0074/Applications/Android/ndk/toolchains/arm-linux-androideabi-4.9/prebuilt/linux-x86_64/bin/arm-linux-androideabi- \
	--sysroot=/home/hicks0074/Applications/Android/ndk/platforms/android-9/arch-arm \
	--extra-version="freedom" \
	--disable-debug \
    --disable-logging \
    --disable-static \
    --disable-swscale-alpha \
    --disable-programs \
    --disable-doc \
    --disable-avdevice \
    --disable-swscale \
    --disable-avfilter \
    --disable-avresample \
    --disable-w32threads \
    --disable-network \
    --disable-dct \
    --disable-lsp \
    --disable-lzo \
    --disable-mdct \
    --disable-rdft \
    --disable-fft \
    --disable-filters \
    --disable-bsfs \
    --disable-zlib \
    --disable-bzlib \
    --disable-muxers \
    --disable-encoders \
    --disable-decoders \
    --disable-hwaccels \
    --enable-decoder=aac \
    --enable-demuxers \
    --enable-parsers \
    --enable-protocols

make clean
make -j4
make install
