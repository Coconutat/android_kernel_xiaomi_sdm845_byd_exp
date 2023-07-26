#!/bin/bash
#设置环境

# 交叉编译器路径
export PATH=$PATH:/home/coconutat/github/GCC/64/bin
export CROSS_COMPILE=aarch64-linux-android-
export CONFIG_BUILD_ARM64_DT_OVERLAY=y

export ARCH=arm64
export DTC_EXT=dtc

if [ ! -d "out" ]; then
	mkdir out
fi

date="$(date +%Y.%m.%d-%I:%M)"

make ARCH=arm64 O=out stock_equuleus_user_defconfig
# 定义编译线程数
make ARCH=arm64 O=out -j12 2>&1 | tee kernel_log-${date}.txt

if [ -f out/arch/arm64/boot/Image.gz-dtb ]; then
	echo "***Packing kernel...***"
	cp out/arch/arm64/boot/Image.gz-dtb Image.gz-dtb
	echo "***Sucessfully built kernel...***"
	echo " "
	exit 0
else
	echo " "
	echo "***Failed!***"
	exit 0
fi
