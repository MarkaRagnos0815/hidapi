MY_LOCAL_PATH:= $(call my-dir)
LOCAL_PATH := $(MY_LOCAL_PATH)

HIDAPI_ROOT_REL:= ../..
HIDAPI_ROOT_ABS:= $(LOCAL_PATH)/../..

include $(LIBUSB)/android/jni/libusb.mk

# hidapi

LOCAL_PATH := $(MY_LOCAL_PATH)
include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
  $(HIDAPI_ROOT_REL)/libusb/hid.c

LOCAL_C_INCLUDES += \
  $(HIDAPI_ROOT_ABS)/hidapi \
  $(HIDAPI_ROOT_ABS)/android

LOCAL_SHARED_LIBRARIES := libusb1.0

LOCAL_MODULE := libhidapi

include $(BUILD_SHARED_LIBRARY)
