#!/bin/bash

# Check if the hardware_xiaomi repository is already cloned, if not, clone it
if [ ! -d "hardware/Xiaomi" ]; then
    echo "Cloning hardware_xiaomi repository..."
    git clone https://github.com/PixelOS-Fifteen/hardware_xiaomi.git hardware/Xiaomi
else
    echo "hardware_xiaomi already exists, skipping clone."
fi

# Check if agm repository is already cloned, if not, clone it
if [ ! -d "hardware/qcom-caf/sm8450/audio/agm" ]; then
    echo "Cloning agm repository..."
    git clone https://github.com/lostark13/agm.git hardware/qcom-caf/sm8450/audio/agm
else
    # Check if the directory for legacy exists before cloning agm again
    if [ ! -d "hardware/qcom-caf/sm8450/audio/agm/ipc/HwBinders/legacy" ]; then
        echo "Cloning agm repository..."
        git clone https://github.com/lostark13/agm.git hardware/qcom-caf/sm8450/audio/agm
    else
        echo "agm already exists and has legacy, skipping clone."
    fi
fi

# Clone Evolution-X vendor repository
if [ ! -d "vendor/xiaomi/sky" ]; then
    echo "Cloning Evolution-X vendor repository..."
    git clone https://github.com/Evolution-X-Devices/vendor_xiaomi_sky.git -b vic vendor/xiaomi/sky
else
    echo "vendor_xiaomi_sky already exists, skipping clone."
fi

# Clone Evolution-X device kernel repository
if [ ! -d "device/xiaomi/sky-kernel" ]; then
    echo "Cloning Evolution-X device kernel repository..."
    git clone https://github.com/Evolution-X-Devices/device_xiaomi_sky-kernel.git device/xiaomi/sky-kernel
else
    echo "device_xiaomi_sky-kernel already exists, skipping clone."
fi

echo "Setup completed successfully for Redmi 12 5G / Poco M6 Pro 5G (sky)."
