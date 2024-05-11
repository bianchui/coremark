#!/bin/bash
readonly THIS_DIR="$( cd "$(dirname "$0")" ; pwd -P )"

pushd $THIS_DIR
which ndk-build
ndk-build

ABI=arm64-v8a
#ABI=armeabi-v7a

adb kill-server
adb start-server
adb push $THIS_DIR/libs/$ABI/coremark /data/local/tmp/
adb shell "cd /data/local/tmp/ && ./coremark && exit"
