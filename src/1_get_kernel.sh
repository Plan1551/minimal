#!/bin/sh

#Translate By Diaob
# 获取'='号后面的每一个字符
DOWNLOAD_URL=$(grep -i KERNEL_SOURCE_URL .config | cut -f2 -d'=')

# 获取最后一个'/'后的的字符
ARCHIVE_FILE=${DOWNLOAD_URL##*/}

cd source

# 下载内核
# -c 选项允许下载中断后恢复
wget -c $DOWNLOAD_URL

# 删除之前解压内核的文件夹
rm -rf ../work/kernel
mkdir ../work/kernel

# 解压内核到 'kernel'文件夹
# 文件夹中会出现如 'kernel\linux-3.16.1'的文件夹
tar -xvf $ARCHIVE_FILE -C ../work/kernel

cd ..
