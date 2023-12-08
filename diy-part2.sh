#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
#sed -i 's/192.168.1.1/192.168.6.1/g' package/base-files/files/bin/config_generate
sed -i 's/192.168.1.1/192.168.8.1/g' package/base-files/files/bin/config_generate

# 取消Immortal大登陆密码
sed -i 's/^\(.*99999\)/#&/' package/emortal/default-settings/files/99-default-settings

# 拉取 phtunnel、pgyvpn 源码
#git clone https://github.com/OrayOS/OpenOray.git package/feeds/OpenOray

# 提取 phtunnel 源码
svn co https://github.com/coolsnowwolf/packages/trunk/net/phtunnel package/feeds/packages/phtunnel

# 提取 luci-app-phtunnel 源码
svn co https://github.com/OrayOS/OpenOray/trunk/luci-app-phtunnel package/feeds/luci/luci-app-phtunnel
