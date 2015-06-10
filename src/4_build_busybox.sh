#!/bin/sh

#Translated By Diaob 
cd work/busybox

# 进入刚才解压的busybox的文件夹，如前面举例的 'busybox-1.22.1'
cd $(ls -d *)

# 删除之前生成的“文物”（artefacts）
make clean

# 创建一个默认配置文件
make defconfig

# 设置让busybox静默编译
# 当然你也可以亲自使用'make menuconfig'来配置
sed -i "s/.*CONFIG_STATIC.*/CONFIG_STATIC=y/" .config

# Busybox 会在配置中默认开启 "RPC networking" 
# 在glibc > 2.14 的版本中这个已经不被支持
# 详情（英文）：http://lists.busybox.net/pipermail/buildroot/2012-June/055173.html
# 如果没有RPC支持可能导致glibc错误
sed -e 's/.*CONFIG_FEATURE_HAVE_RPC.*/CONFIG_FEATURE_HAVE_RPC=n/' -i .config
sed -e 's/.*CONFIG_FEATURE_INETD_RPC.*/CONFIG_FEATURE_INETD_RPC=n/' -i .config

# 使用并行编译，加快编译速度
make busybox -j $(grep ^processor /proc/cpuinfo | wc -l)

# 为busybox创建符号链接
# 使用'busybox.links'
make install

cd ../../..
