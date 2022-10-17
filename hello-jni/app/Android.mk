LOCAL_PATH:= $(call my-dir)
LOCAL_PATH_JNI := $(LOCAL_PATH)
#include $(LOCAL_PATH_JNI)/jni/Android.mk
include $(CLEAR_VARS)
LOCAL_MODULE_TAGS := samples
LOCAL_SRC_FILES := $(call all-java-files-under, src)
LOCAL_PACKAGE_NAME := HelloJNI
LOCAL_CERTIFICATE := platform
LOCAL_SDK_VERSION := current
LOCAL_JNI_SHARED_LIBRARIES := hello-jni
include $(BUILD_PACKAGE)
