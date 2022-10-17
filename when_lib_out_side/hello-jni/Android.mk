LOCAL_PATH:= $(call my-dir)
LOCAL_PATH_JNI := $(LOCAL_PATH)
include $(LOCAL_PATH_JNI)/jni/Android.mk
#include $(CLEAR_VARS)
#LOCAL_MODULE_TAGS := samples
#LOCAL_MODULE := hello-jni
#LOCAL_SRC_FILES := hello-jni.so
#include $(BUILD_SHARED_LIBRARY)
include $(CLEAR_VARS)
LOCAL_MODULE_TAGS := samples
LOCAL_SRC_FILES := $(call all-java-files-under, src)
LOCAL_PACKAGE_NAME := HelloJNI
LOCAL_CERTIFICATE := platform
LOCAL_SDK_VERSION := current
REAL_PATH := ../../../../../../../out/target/product/generic/obj/SHARED_LIBRARIES/hello-jni-ar_intermediates
#NEW_PATH := ../../../../../../../out/target/product/generic/obj/SHARED_LIBRARIES/hello-jni-lib_intermediates
#$(shell mkdir -p $(NEW_PATH)) 
JNI_LIB_PATH := libs/armeabi-v7a
$(shell cp $(wildcard $(JNI_LIB_PATH)/*.so $(REAL_PATH))) 
#$(shell cp $(wildcard $(REAL_PATH)/*.so $(NEW_PATH))) 
#$(warning >>>>>>>>>> $(NEW_PATH))
#LOCAL_CHECK_ELF_FILES := false
LOCAL_USE_AAPT2 := true
LOCAL_JNI_SHARED_LIBRARIES := hello-jni-ar
include $(BUILD_PACKAGE)
