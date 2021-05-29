# Includes the base of Android-x86 platform
$(call inherit-product,device/generic/common/x86.mk)

PRODUCT_NAME   := virtualbox
PRODUCT_BRAND  := virtualbox_brand
PRODUCT_DEVICE := virtualbox
PRODUCT_MODEL  := virtualbox_model

TARGET_KERNEL_SOURCE := vbox-kernel
TARGET_KERNEL_CONFIG := android-x86_defconfig
TARGET_ARCH := x86

PRODUCT_OUT ?= out/target/product/$(PRODUCT_DEVICE)

IS_VBOX_x86_BUILD := true
