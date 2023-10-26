echo 'Starting to clone stuffs needed for your device'
echo 'Cloning Device Tree [1/5]'
# vili Tree
rm -rf device/xiaomi/vili
git clone --depth=1 https://github.com/ProjectElixir-Devices/android_device_xiaomi_vili.git -b elixir device/xiaomi/vili
echo 'Cloning vili Vendor tree [2/5]'
# Device Vendor Tree
rm -rf vendor/xiaomi/vili
git clone --depth=1 https://github.com/ProjectElixir-Devices/android_vendor_xiaomi_vili.git vendor/xiaomi/vili

echo 'Cloning Kernel tree [3/5]'
# Kernel Tree
rm -rf kernel/xiaomi/sm8350
git clone --depth=1 git@github.com:ThatMalayaliDeb/kernel_xiaomi_sm8350.git kernel/xiaomi/sm8350

echo 'Cloning Hardware xiaomi [4/5]'
# Hardware xiaomi
rm -rf hardware/xiaomi
git clone --depth=1 git@github.com:ThatMalayaliDeb/hardware_xiaomi.git -b evo hardware/xiaomi

echo 'Cloning Leica Cam [5/5]'
# Op Cam
rm -rf vendor/xiaomi/vili-miuicamera
git clone --depth=1 git@gitlab.com:ThatMalayaliDeb/vili-leicacamera.git vendor/xiaomi/vili-miuicamera

echo 'Cloning vili Firmware'
# vili firmware
rm -rf vendor/xiaomi/vili-firmware
git clone --depth=1 git@gitlab.com:ThatMalayaliDeb/vendor_xiaomi_vili-firmware.git -b 13.0 vendor/xiaomi/vili-firmware

echo 'Completed, Now proceeding to lunch'