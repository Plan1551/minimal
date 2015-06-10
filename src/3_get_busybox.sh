#!/bin/sh

#Translated By Diaob
# 获取'='号后面的每一个字符
DOWNLOAD_URL=$(grep -i BUSYBOX_SOURCE_URL .config | cut -f2 -d'=')

# 获取最后一个'/'后的的字符
ARCHIVE_FILE=${DOWNLOAD_URL##*/}

cd source

# 下载busybox源码
# -c 选项允许下载中断后恢复
wget -c $DOWNLOAD_URL

#  删除之前解压内核的文件夹
rm -rf ../work/busybox
mkdir ../work/busybox

# 解压busybox到 'busybox'文件夹
# 文件夹中会出现如 'busybox\busybox-1.22.1'的文件夹
tar -xvf $ARCHIVE_FILE -C ../work/busybox

cd ..
