# android_kernel_xiaomi_mi8_series
 Xiaomi Mi 8 Series Kernel  
 Based Version:Android Q Version  
 ***  
![GitHub Downloads](https://img.shields.io/github/downloads/Coconutat/android_kernel_xiaomi_sdm845_exp/total?labelColor=%2300CED1&color=%23FF8C00)  
 ***  
 Kernel Use compiler is GCC,You can choice in this list(Just choose one of them):
 1. [Google GCC Android 10](https://android.googlesource.com/platform/prebuilts/gcc/linux-x86/aarch64/aarch64-linux-android-4.9/+archive/84fb09fafc92a3d9b4d160f049d46c3c784cc941.tar.gz)  
 2. [Linaro GCC 4.9.4](https://releases.linaro.org/components/toolchain/binaries/4.9-2017.01/aarch64-linux-gnu/gcc-linaro-4.9.4-2017.01-x86_64_aarch64-linux-gnu.tar.xz)  
 3. [Linaro GCC 5.5.0](https://releases.linaro.org/components/toolchain/binaries/5.5-2017.10/aarch64-linux-gnu/gcc-linaro-5.5.0-2017.10-x86_64_aarch64-linux-gnu.tar.xz)  
 ***  
 When you compile kernel,you need make clean.
 ```
 make clean  
 make mrproper  
 ```
 And,Please install dtc tools.
 ```
 sudo apt-get install device-tree-compiler
 ```
 ***  
 Looking for a version for [LineageOS 20](https://lineageos.org/)?  
 Look here:[android_kernel_xiaomi_sdm845_lineageos_Exp](https://github.com/Coconutat/android_kernel_xiaomi_sdm845_lineageos_Exp)  
 ***
