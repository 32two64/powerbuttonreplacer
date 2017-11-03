ARCHS = armv7 arm64

include theos/makefiles/common.mk

APPLICATION_NAME = PowerReplacer
PowerReplacer_FILES = main.m PowerReplacerApplication.mm RootViewController.mm
PowerReplacer_FRAMEWORKS = UIKit CoreGraphics

include $(THEOS_MAKE_PATH)/application.mk
