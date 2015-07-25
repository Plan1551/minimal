#!/bin/sh
   

#Translated By Diaob
rm -f minimal_linux_live.iso

cd work/kernel
cd $(ls -d *)

# 设置生成的iso文件种类
sed -i 's/mkisofs/genisoimage/g' arch/x86/boot/Makefile

# 生成iso文件
make isoimage FDINITRD=../../rootfs.cpio.gz -j $(grep ^processor /proc/cpuinfo | wc -l)

cp arch/x86/boot/image.iso ../../../minimal_linux_live.iso

cd ../../..
