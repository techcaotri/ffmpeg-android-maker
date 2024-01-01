#!/bin/bash -x

export ANDROID_SDK_HOME=/home/tripham/Android/Sdk
export ANDROID_NDK_HOME=/home/tripham/Android/Sdk/ndk/23.1.7779620/
export EXTRA_BUILD_CONFIGURATION_FLAGS=" --disable-debug --enable-release --enable-neon --enable-hwaccels  --enable-decoder=h264_mediacodec --enable-decoder=hevc_mediacodec --enable-decoder=mpeg4_mediacodec "

./ffmpeg-android-maker.sh --source-tar=6.0.1 \
  --enable-libmp3lame \
  --enable-libtwolame \
  --enable-libopus \
  --enable-libwebp \
  --enable-libvpx \
  --enable-libfreetype \
  --enalbe-libass \
  --enable-libx264 \
  --enable-libx265 \
  -android=21 \
  -abis=arm64-v8a 2>&1 | tee ffmpeg_android_maker.log
