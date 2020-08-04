#
# Copyright (C) 2019 The SuperiorOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

$(call inherit-product, device/xiaomi/santoni/full_santoni.mk)

# Inherit some common SuperiorOS stuff.
$(call inherit-product, vendor/superior/config/common.mk)

PRODUCT_DEVICE := santoni
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi 4X
PRODUCT_NAME := superior_santoni
BOARD_VENDOR := Xiaomi
PRODUCT_MANUFACTURER := Xiaomi

#OFFICIAL
export SUPERIOR_OFFICIAL=true

# Maintainer
PRODUCT_PROPERTY_OVERRIDES += \
    ro.superior.maintainer=Bikram-Mukherjee

# Def Launcher
TARGET_LAUNCHER := lawnchair

# Boot animation
TARGET_BOOT_ANIMATION_RES := 720

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="walleye-user 8.1.0 OPM1.171019.011 4448085 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := "google/walleye/walleye:8.1.0/OPM1.171019.011/4448085:user/release-keys"
