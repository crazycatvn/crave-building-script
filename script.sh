#!/bin/bash
# Removing trees
rm -rf device/xiaomi/xaga
rm -rf device/xiaomi/mt6895-common
rm -rf vendor/xiaomi/xaga
rm -rf vendor/xiaomi/mt6895-common
rm -rf kernel/xiaomi/mt6895
rm -rf vendor/mediatek/ims
rm -rf device/mediatek/sepolicy_vndr
rm -rf hardware/mediatek
rm -rf hardware/xiaomi
rm -rf vendor/firmware
rm -rf vendor/xiaomi/miuicamera-xaga
# Cloning trees
git clone https://github.com/crazycatvn/android_device_xiaomi_xaga.git device/xiaomi/xaga
git clone https://github.com/XagaForge/android_device_xiaomi_mt6895-common.git device/xiaomi/mt6895-common
git clone https://gitlab.com/priiii08918/android_vendor_xiaomi_xaga.git -b 16 vendor/xiaomi/xaga
git clone https://github.com/XagaForge/android_vendor_xiaomi_mt6895-common.git vendor/xiaomi/mt6895-common
git clone https://github.com/XagaForge/android_kernel_xiaomi_mt6895.git kernel/xiaomi/mt6895
git clone https://github.com/XagaForge/android_vendor_mediatek_ims.git vendor/mediatek/ims
git clone https://github.com/XagaForge/android_device_mediatek_sepolicy_vndr.git device/mediatek/sepolicy_vndr
git clone https://github.com/XagaForge/android_hardware_mediatek.git hardware/mediatek
git clone https://github.com/XagaForge/android_hardware_xiaomi.git hardware/xiaomi
git clone https://github.com/XagaForge/android_vendor_firmware.git vendor/firmware
git clone https://gitlab.com/priiii08918/proprietary_vendor_xiaomi_miuicamera-xaga.git -b 16 vendor/xiaomi/miuicamera-xaga
cd vendor/xiaomi/miuicamera-xaga/vendor/proprietary/system/priv-app/MiuiCamera
git-lfs install
git-lfs pull
cd ..
cd ..
cd ..
cd ..
cd ..
cd ..
cd ..
cd ..
# Syncing source
repo init -u https://github.com/Miku-UI/manifesto -b Blooming --git-lfs
/opt/crave/resync.sh
# Building
. build/envsetup.sh
lunch miku_xaga-bp2a-userdebug
mka bacon
