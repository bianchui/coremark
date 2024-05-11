APP_CPPFLAGS += -Wall -Werror

APP_CFLAGS += -fvisibility=hidden
APP_CPPFLAGS += -fvisibility=hidden -fvisibility-inlines-hidden

APP_CFLAGS += -ffunction-sections -fdata-sections
APP_CPPFLAGS += -ffunction-sections -fdata-sections

APP_CPPFLAGS += -fno-stack-protector

APP_LDLIBS += -icf=safe -dead_strip

#APP_STL := stlport_static
APP_STL := c++_static
#APP_STL := gnustl_static

APP_ABI := arm64-v8a #x86 armeabi
#APP_ABI := armeabi-v7a #x86 armeabi

APP_PLATFORM := android-24

NDK_TOOLCHAIN_VERSION := clang

APP_OPTIM := release

