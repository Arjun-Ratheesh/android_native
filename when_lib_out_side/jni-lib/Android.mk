LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)
LOCAL_MODULE    := hello-jni
LOCAL_SRC_FILES := hello-jni.c
include $(BUILD_SHARED_LIBRARY)
#NEW_PATH := ../../../../../../out/target/product/generic/obj/SHARED_LIBRARIES/hello-jni-lib_intermediates
#$(shell mkdir -V $(NEW_PATH))

