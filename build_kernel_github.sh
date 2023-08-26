#!/bin/bash
#设置环境

# 交叉编译器路径
export PATH=$(pwd)/ToolChains/bin/:$PATH
export CROSS_COMPILE=aarch64-linux-android-
export CONFIG_BUILD_ARM64_DT_OVERLAY=y

export ARCH=arm64
export DTC_EXT=dtc

if [ ! -d "out" ]; then
	mkdir out
fi

start_time=$(date +%Y.%m.%d-%I_%M)

start_time_sum=$(date +%s)

make ARCH=arm64 O=out generic_xiaomi_sdm845_ksu_defconfig
# 定义编译线程数
make ARCH=arm64 O=out -j12 2>&1 | tee kernel_log-${start_time}.txt

end_time_sum=$(date +%s)

end_time=$(date +%Y.%m.%d-%I_%M)

# 计算运行时间（秒）
duration=$((end_time_sum - start_time_sum))

# 将秒数转化为 "小时:分钟:秒" 形式输出
hours=$((duration / 3600))
minutes=$(( (duration % 3600) / 60 ))
seconds=$((duration % 60))

# 打印运行时间
echo "脚本运行时间为：${hours}小时 ${minutes}分钟 ${seconds}秒"

if [ -f out/arch/arm64/boot/Image.gz-dtb ]; then
	echo "***Copy kernel...***"

	cp -vf out/arch/arm64/boot/Image.gz tools/AnyKernel3/Image.gz
	cp -vf out/arch/arm64/boot/Image.gz-dtb tools/AnyKernel3/Image.gz-dtb
	cp -vf tools/AnyKernel3_sh/anykernel.sh tools/AnyKernel3/
	cp -vf tools/AnyKernel3_sh/banner tools/AnyKernel3/

	echo "***Sucessfully copy kernel...***"
	echo " "
	exit 0
else
	echo " "
	echo "***Failed!***"
	exit 0
fi
