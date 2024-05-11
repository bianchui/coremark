LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

TARGET_PLATFORM := android-24

LOCAL_MODULE := coremark

ifeq ($(TARGET_ARCH_ABI),armeabi)
    LOCAL_ARM_MODE := thumb #arm
else
    LOCAL_ARM_MODE := thumb
endif

LOCAL_SRC_PATH := $(LOCAL_PATH)/../../

LOCAL_SRC_FILES := \
    ../../core_list_join.c \
    ../../core_main.c \
    ../../core_matrix.c \
    ../../core_state.c \
    ../../core_util.c \
    ../../posix/core_portme.c \

LOCAL_C_INCLUDES := \
    $(LOCAL_SRC_PATH)/posix/ \
    $(LOCAL_SRC_PATH)/ \

LOCAL_CFLAGS += -fno-stack-protector
LOCAL_CFLAGS += -DFLAGS_STR="\"\""

include $(BUILD_EXECUTABLE)
