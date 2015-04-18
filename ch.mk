################OPTIMIZATIONS###################
#Use Optimizations?
USE_OPTIMIZATIONS := true

ifneq ($(strip $(USE_OPTIMIZATIONS)),false)
#HACKIFY CONFIGURATION 

##Define ROM toolchain and LIB Verison(should be the same version number as the toolchain)
TARGET_GCC_AND := 4.8-sm
TARGET_LIB_VERSION := 4.8

##Define Kernel toolchain
TARGET_GCC_ARM := 4.8-sm

##Enable Pthread (only on newer devices)
ENABLE_PTHREAD := false

##Enable O3 Optimizations
O3_OPTIMIZATIONS:= true

endif
#################################################

##If you´re running an old device, set this to true
USE_LEGACY_GCC := true

$(call inherit-product, device/samsung/jfltexx/full_jfltexx.mk)

# Enhanced NFC
$(call inherit-product, vendor/ch/config/nfc_enhanced.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/ch/config/common_full_phone.mk)

PRODUCT_BUILD_PROP_OVERRIDES += \
  PRODUCT_NAME=jfltexx \
  TARGET_DEVICE=jfltexx \
  BUILD_FINGERPRINT="samsung/jfltexx/jflte:5.0.1/LRX22C/I9505XXUHOB7:user/release-keys" \
  PRIVATE_BUILD_DESC="jfltexx-user 5.0.1 LRX22C I9505XXUHOB7 release-keys"

PRODUCT_DEVICE := jfltexx
PRODUCT_NAME := ch_jfltexx

