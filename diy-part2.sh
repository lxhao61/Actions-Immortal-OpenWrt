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
sed -i 's/192.168.1.1/192.168.6.1/g' package/base-files/files/bin/config_generate

# 取消Immortalwrt大登陆密码
sed -i 's/^\(.*99999\)/#&/' package/emortal/default-settings/files/99-default-settings

# 删除luci-app-passwall插件
#rm -rf package/feeds/packages/luci-app-passwall

# 拉取luci-app-passwall插件
#svn co https://github.com/xiaorouji/openwrt-passwall/trunk/luci-app-passwall package/feeds/packages/luci-app-passwall
#svn co https://github.com/lxhao61/openwrt-passwall/trunk/luci-app-passwall package/feeds/packages/luci-app-passwall

# 拉取passwall源码
#git clone https://github.com/xiaorouji/openwrt-passwall.git package/passwall
#git clone https://github.com/lxhao61/openwrt-passwall.git package/passwall
