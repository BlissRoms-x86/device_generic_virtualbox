# Includes the base of Android-x86 platform
$(call inherit-product,device/generic/common/x86.mk)

PRODUCT_NAME   := virtualbox
PRODUCT_BRAND  := virtualbox_brand
PRODUCT_DEVICE := virtualbox
PRODUCT_MODEL  := virtualbox_model

TARGET_KERNEL_SOURCE := kernel
TARGET_KERNEL_CONFIG := android-x86_defconfig
TARGET_ARCH := x86

PRODUCT_OUT ?= out/target/product/$(PRODUCT_DEVICE)

include $(TARGET_KERNEL_SOURCE)/AndroidKernel.mk

.PHONY: $(TARGET_PREBUILT_KERNEL)

LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel \
