LOCAL_PATH := $(call my-dir)
splash_local_path := $(LOCAL_PATH)

splash_sources := \
    splashmenu.c \
    default_splashmenu_ui.c \
    ui.c \

LOCAL_PATH := $(splash_local_path)

include $(CLEAR_VARS)

LOCAL_MODULE := safestrapmenu
LOCAL_MODULE_TAGS := optional

LOCAL_SRC_FILES := $(splash_sources)

LOCAL_CFLAGS += -DMAX_ROWS=44 -DMAX_COLS=96


LOCAL_STATIC_LIBRARIES := libminui_ss libpixelflinger_static libpng libz
LOCAL_STATIC_LIBRARIES += libstdc++ libc libcutils

LOCAL_FORCE_STATIC_EXECUTABLE := true

LOCAL_MODULE_PATH := $(TARGET_RECOVERY_OUT)/root/../../install-files/etc/safestrap

include $(BUILD_EXECUTABLE)

include $(call all-makefiles-under,$(splash_local_path))

