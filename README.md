# Mi 8 Explorer Edition & UD BYD-Kernel For MIUI 12.5.x Version
 Mi 8 Explorer Edition & UD **BYD-Kernel** For MIUI 12.5.x Version
 ***  
 **Now Github Action will automatically compile the kernel. You can download the compiled kernel through Github Action.**  
 Github Action:**[Click Here!!!](https://github.com/Coconutat/android_kernel_xiaomi_sdm845_byd_exp/actions/workflows/build_byd_kernel.yml)**  
 ***  
   
<div align="center">
<img src="https://raw.githubusercontent.com/Coconutat/android_kernel_xiaomi_sdm845_exp/misc/ascii-text-art.png" alt="BYD_KERNEL Logo"> 
</div>
  
 ***
 ## Warning:  
 **NOT SUPPORT Mi 8 Standard Edition(dipper)!!!**    
 ***
 Based OS Version:Android Q Version  
 Based CAF Tag:LA.UM.8.3.r1-05800-sdm845.0   
 ***
 **Kernel Feature**:  
   + Support **Mi 8 Explorer Edition & UD**  
   + Support **KernelSU**  
   + Support **Wireguard**    
 ***
![GitHub Downloads](https://img.shields.io/github/downloads/Coconutat/android_kernel_xiaomi_sdm845_exp/total?labelColor=%2300CED1&color=%23FF8C00)  
**[下载分析](https://gra.caldis.me/?url=https://github.com/Coconutat/android_kernel_xiaomi_sdm845_byd_exp)**  
 ***  
 Recommended cross compiler is [Proton-Clang](https://github.com/kdrag0n/proton-clang).  
 For Clang 16 : You can use [ZyC_Clang 16](https://github.com/ZyCromerZ/Clang/releases/tag/16.0.6-20231003-release).  
 For Clang 18 : You can use [ZyC_Clang 18](https://github.com/ZyCromerZ/Clang/releases/).  
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
