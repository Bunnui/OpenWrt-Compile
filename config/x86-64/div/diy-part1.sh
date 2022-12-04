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
# "feeds.conf.default" 文件更新前执行的脚本

# 取消feeds源内的helloworld注释
sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# 添加feeds源
# echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
# echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default

# 解锁网易音乐插件
git clone https://github.com/UnblockNeteaseMusic/luci-app-unblockneteasemusic.git package/lean/luci-app-unblockneteasemusic

# DNS 广告过滤
git clone https://github.com/rufengsuixing/luci-app-adguardhome.git package/lean/luci-app-adguardhome

# 文件管理助手
git clone https://github.com/shidahuilang/luci-app-fileassistant package/lean/luci-app-fileassistant