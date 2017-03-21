THEOS_DEVICE_IP = 192.168.1.108
TARGET = iphone:latest:8.0
include $(THEOS)/makefiles/common.mk

TWEAK_NAME = appInspector
appInspector_FILES = Tweak.xm UIView+UIAutoTest.m UIResponder+UIAutoTest.m
appInspector_FRAMEWORKS = UIKit CFNetwork
appInspector_PRIVATE_FRAMEWORKS = AppSupport

include $(THEOS_MAKE_PATH)/tweak.mk
