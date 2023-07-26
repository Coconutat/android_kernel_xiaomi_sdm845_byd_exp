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
	cp out/arch/arm64/boot/Image.gz tools/AnyKernel3/Image.gz
	cp out/arch/arm64/boot/Image.gz-dtb tools/AnyKernel3/Image.gz-dtb
	cp -vf tools/AnyKernel3_sh/anykernel.sh tools/AnyKernel3/
	cp -vf tools/AnyKernel3_sh/banner tools/AnyKernel3/
	cd tools/AnyKernel3
	zip -r9 Mi8_UD_MIUI_12.5_Kernel-${date}.zip * > /dev/null
	cd ../..
	mv tools/AnyKernel3/Mi8_UD_MIUI_12.5_Kernel-${date}.zip Mi8_UD_MIUI_12.5_Kernel-${date}.zip
	rm -rf tools/AnyKernel3/Image.gz
	rm -rf tools/AnyKernel3/Image.gz-dtb
	echo "***Sucessfully built kernel...***"
	echo " "
	exit 0
else
	echo " "
	echo "***Failed!***"
	exit 0
fi
