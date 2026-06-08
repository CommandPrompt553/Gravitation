THEOS_PACKAGE_SCHEME = rootless
TARGET = iphone:clang:latest:15.0
ARCHS = arm64 arm64e

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = Gravitation

Gravitation_FILES = Tweak.xm
Gravitation_CFLAGS = -fobjc-arc

include $(THEOS)/makefiles/tweak.mk

SUBPROJECTS += gravitationprefs
include $(THEOS)/makefiles/aggregate.mk
