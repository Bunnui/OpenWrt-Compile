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
# "feeds.conf.default" 文件更新后执行的脚本

# 替换默认192.168.1.1地址为 xxx.xxx.xxx.xxx
sed -i 's/192.168.1.1/192.168.10.1/g' package/base-files/files/bin/config_generate


# 解锁网易音乐插件
git clone https://github.com/UnblockNeteaseMusic/luci-app-unblockneteasemusic.git package/my/luci-app-unblockneteasemusic

# DNS 广告过滤
git clone https://github.com/rufengsuixing/luci-app-adguardhome.git package/my/luci-app-adguardhome

# Clash 客户端
git clone https://github.com/frainzy1477/luci-app-clash.git package/my/luci-app-clash

# argon主题
rm -rf package/feeds/luci/luci-theme-argon
git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git package/my/luci-theme-argon

# argon主题配置
git clone https://github.com/jerrykuku/luci-app-argon-config.git package/my/luci-app-argon-config