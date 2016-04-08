LOCAL_PATH := $(call my-dir)

#The app to control Superuser access
include $(CLEAR_VARS)
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE := SuperSU
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_SRC_FILES := SuperSU/common/Superuser.apk
LOCAL_PACKAGE_NAME := $(LOCAL_MODULE)
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_REQUIRED_MODULES := su .su daemonsu libsupol.so supolicy .installed_su_daemon 99SuperSUDaemon install-rootfinish.sh
include $(BUILD_PREBUILT)

#File used to tell TWRP that root is installed
include $(CLEAR_VARS)
LOCAL_MODULE := .installed_su_daemon
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES := SuperSU/common/.installed_su_daemon
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/system/etc
include $(BUILD_PREBUILT)

#init.d script used to launch Superuser daemon
include $(CLEAR_VARS)
LOCAL_MODULE := 99SuperSUDaemon
LOCAL_SRC_FILES := SuperSU/common/99SuperSUDaemon
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/system/etc/init.d
LOCAL_REQUIRED_MODULES := busybox
include $(BUILD_PREBUILT)

#busybox used to enable init.d support
include $(CLEAR_VARS)
LOCAL_MODULE := busybox
LOCAL_SRC_FILES := Busybox/busybox
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/system/xbin
LOCAL_REQUIRED_MODULES := install-busybox.sh install-busyboxfinish.sh
include $(BUILD_PREBUILT)

#script called from init.rc to execute the /system/etc/init.d scripts
include $(CLEAR_VARS)
LOCAL_MODULE := install-busybox.sh
LOCAL_SRC_FILES := Busybox/install-recovery.sh
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/system/etc
include $(BUILD_PREBUILT)

#symlink all applets
include $(CLEAR_VARS)
LOCAL_MODULE := install-busyboxfinish.sh
LOCAL_SRC_FILES := Busybox/install-busyboxfinish.sh
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/system/bin
include $(BUILD_PREBUILT)

#arm64 files superuser access
ifeq ($(TARGET_ARCH),arm64)

include $(CLEAR_VARS)
LOCAL_MODULE := install-rootfinish.sh
LOCAL_SRC_FILES := SuperSU/ARCH/arm64/install-rootfinish.sh
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/system/bin
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := su
LOCAL_SRC_FILES := SuperSU/ARCH/arm64/su
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/system/xbin
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := .su
LOCAL_SRC_FILES := SuperSU/ARCH/arm64/su
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/system/bin/.ext
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := daemonsu
LOCAL_SRC_FILES := SuperSU/ARCH/arm64/su
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/system/xbin
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libsupol.so
LOCAL_SRC_FILES := SuperSU/ARCH/arm64/libsupol.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/system/lib64
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := supolicy
LOCAL_SRC_FILES := SuperSU/ARCH/arm64/supolicy
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/system/xbin
include $(BUILD_PREBUILT)

endif

