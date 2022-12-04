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

# argon主题(替换Lede仓库的插件)
sudo rm -rf package/lean/luci-theme-argon
git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git package/lean/luci-theme-argon