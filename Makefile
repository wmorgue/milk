export ARCHS = arm64 armv7
export SYSROOT = $(THEOS)/sdks/iPhoneOS14.4.sdk/

SUBPROJECTS += Sources
TARGET := iphone:clang:latest:7.0
INSTALL_TARGET_PROCESSES = SpringBoard

include $(THEOS)/makefiles/common.mk
include $(THEOS_MAKE_PATH)/aggregate.mk
