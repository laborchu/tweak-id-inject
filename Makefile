THEOS_DEVICE_IP = 192.168.1.108
TARGET = iphone:latest:8.0
include $(THEOS)/makefiles/common.mk

TWEAK_NAME = idInject
idInject_FILES = Tweak.xm UIView+UIAutoTest.m UIResponder+UIAutoTest.m
idInject_FRAMEWORKS = UIKit CFNetwork
idInject_PRIVATE_FRAMEWORKS = AppSupport

include $(THEOS_MAKE_PATH)/tweak.mk
