# android_native
How to add shared library (.so file) in android apk using Android MK


How to add shared libary into apk using android.mk
--------------------------------------------------

1) When source for .so file is inside your module
------------------------------------------------
this is pretty simple and straight forward, you just need to create a shared libary out .c file using BUILD_SHARED_LIBRAY and include that in your APK
using LOCAL_JNI_SHARED_LIBRARIES. Inside jni folder in this project , we have an Android.mk which will create a .so.
Then in the main Android.mk which will buld the apk (BUIDL_PACAKGE) add LOCAL_JNI_SHARED_LIBRARIES. Make sure that your shared labraries Android,mk is
executed before the main Android.mk. So I have just included it in main Android.mk

2) When source for .so file is outside your module
------------------------------------------
You need to refer example in when_lib_out_side folder
