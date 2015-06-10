#!/bin/sh

#Translated By Diaob
cd work/kernel

# 进入刚才解压的内核文件夹，如前面举例的 'linux-3.16.1'
cd $(ls -d *)

# 做一点点清理工作，包括内核配置文件
make mrproper

# 为内核创建一个默认配置文件
make defconfig

# 设置系统的HOSTNAME
#译者注：如果失败，可以尝试将minimal改成自己喜欢的
sed -i "s/.*CONFIG_DEFAULT_HOSTNAME.*/CONFIG_DEFAULT_HOSTNAME=\"minimal\"/" .config


# 编译内核
# 对不同版本内核编译的说明（英文）：
# http://unix.stackexchange.com/questions/5518/what-is-the-difference-between-the-following-kernel-makefile-terms-vmlinux-vmlinux
#译者注：中文版：1.http://blog.csdn.net/geekcome/article/details/6558754 
#                2.http://zh.wikipedia.org/wiki/Vmlinux （请自备梯子）

# 并行编译以提高编译速度
make bzImage -j $(grep ^processor /proc/cpuinfo | wc -l)

cd ../../..
