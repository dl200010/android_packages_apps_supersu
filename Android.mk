LOCAL_PATH := $(call my-dir)



ifeq ($(TARGET_ARCH),arm64)

include $(CLEAR_VARS)
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE := SuperSU
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_SRC_FILES := common/Superuser.apk
LOCAL_PACKAGE_NAME := $(LOCAL_MODULE)
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_REQUIRED_MODULES := su .su daemonsu libsupol.so supolicy .installed_su_daemon 99SuperSUDaemon
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := su
LOCAL_SRC_FILES := ARCH/arm64/su
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/system/xbin
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := .su
LOCAL_SRC_FILES := ARCH/arm64/su
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/system/bin/.ext
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := daemonsu
LOCAL_SRC_FILES := ARCH/arm64/su
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/system/xbin
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libsupol.so
LOCAL_SRC_FILES := ARCH/arm64/libsupol.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/system/lib64
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := supolicy
LOCAL_SRC_FILES := ARCH/arm64/supolicy
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/system/xbin
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := .installed_su_daemon
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES := common/.installed_su_daemon
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/system/etc
include $(BUILD_PREBUILT)

#include $(CLEAR_VARS)
#LOCAL_MODULE := install-recovery.sh
#LOCAL_SRC_FILES := common/install-recovery.sh
#LOCAL_MODULE_TAGS := optional
#LOCAL_MODULE_CLASS := EXECUTABLES
#LOCAL_MODULE_PATH := $(PRODUCT_OUT)/system/etc
#include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := 99SuperSUDaemon
LOCAL_SRC_FILES := common/99SuperSUDaemon
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/system/etc/init.d
include $(BUILD_PREBUILT)

#SuperSUSetup:
#	rm $(PRODUCT_OUT)/system/bin/app_process
#	ln -sf /system/xbin/daemonsu $(PRODUCT_OUT)/system/bin/app_process
#	ln -sf /system/etc/install-recovery.sh $(PRODUCT_OUT)/system/bin/install-recovery.sh
#	if [ -f "$(PRODUCT_OUT)/system/bin/app_process64" ]; then \
#        mv -f $(PRODUCT_OUT)/system/bin/app_process64 $(PRODUCT_OUT)/app_process64_original; \
#        cp -rf $(PRODUCT_OUT)/app_process64_original $(PRODUCT_OUT)/system/bin/app_process64_original; \
#    else \
#        rm $(PRODUCT_OUT)/system/bin/app_process64; \
#    fi
#	ln -sf /system/xbin/daemonsu $(PRODUCT_OUT)/system/bin/app_process64
#	if [ -e "$(PRODUCT_OUT)/system/bin/app_process_init" ]; then \
#        rm $(PRODUCT_OUT)/system/bin/app_process_init; \
#    fi
#	cp -rf $(PRODUCT_OUT)/app_process64_original $(PRODUCT_OUT)/system/bin/app_process_init
#	chmod 0755 $(PRODUCT_OUT)/system/bin/app_process_init
#	cp -rf SuperSUDelete.sh $(PRODUCT_OUT)/SuperSUDelete.sh
#	chmod 777 $(PRODUCT_OUT)/SuperSUDelete.sh

endif






