# Correct boot animation size
TARGET_BOOTANIMATION_NAME := vertical-480x800

$(call inherit-product, device/zte/skate/skate.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/gsm.mk)

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=skate BUILD_ID=IML74K BUILD_FINGERPRINT=ZTE/N880E_ICS/atlas40:4.0.3/IML74K/20120531.102703:user/release-keys PRIVATE_BUILD_DESC="N880E_ICS-user 4.0.3 IML74K 20120531.102703 release-keys" BUILD_NUMBER=20120531.102703

PRODUCT_NAME := cm_skate
PRODUCT_DEVICE := skate
PRODUCT_BRAND := ZTE
PRODUCT_MANUFACTURER := ZTE
PRODUCT_MODEL := Skate
PRODUCT_RELEASE_NAME := Skate