$(call inherit-product, device/htc/saga/full_saga.mk)

PRODUCT_RELEASE_NAME := DesireS

# Inherit some common MK stuff.
$(call inherit-product, vendor/mk/config/common_full_phone.mk)

# Inherit some common MK stuff.
$(call inherit-product, vendor/mk/config/gsm.mk)

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=htc_saga BUILD_FINGERPRINT=htc_europe/htc_saga/saga:4.4.2/KOT49H/87995:user/release-keys PRIVATE_BUILD_DESC="4.4.2 Ruling release-keys"

PRODUCT_NAME := mk_saga
PRODUCT_DEVICE := saga

