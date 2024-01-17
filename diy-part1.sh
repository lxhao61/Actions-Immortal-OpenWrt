#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# 查看所有标签
#git tag
# 切换到标签v21.02.7
#git checkout v21.02.7

# 回退源码
git reset --hard b6dd058 #等同于切换到标签v21.02.7

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
#echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default

# 注释掉默认 packages 源
#sed -i 's/^\(.*packages\)/#&/' feeds.conf.default

# 添加 packages 源
#sed -i '$a src-git packages https://github.com/lxhao61/packages.git;openwrt-21.02' feeds.conf.default
