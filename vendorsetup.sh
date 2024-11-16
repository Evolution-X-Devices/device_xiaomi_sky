#!/bin/bash
# Evolution X Vendor Setup Script

echo "Setting up repositories for Redmi 12 5G / Poco M6 Pro 5G (sky)..."

# Clone the kernel source
echo "Cloning kernel repository..."
git clone https://github.com/Evolution-X-Devices/device_xiaomi_sky-kernel.git device/xiaomi/sky-kernel

# Clone the vendor source
echo "Cloning vendor repository..."
git clone https://github.com/Evolution-X-Devices/vendor_xiaomi_sky.git vendor/xiaomi/sky

# Clone the hardware repository
echo "Cloning hardware repository..."
git clone https://github.com/LineageOS/android_hardware_xiaomi.git -b lineage-21 hardware/xiaomi

echo "Setup complete. Repositories are ready."
