# Compile OpenWrt

## 声明

- 该项目使用 [P3TERX/Actions-OpenWrt](https://github.com/P3TERX/Actions-OpenWrt) 模板对 [coolsnowwolf
/
lede
](https://github.com/coolsnowwolf/lede) 项目进行编译固件。

- 该项目为方便我编译自己使用的固件，如果你们觉得适合你们，可以执行 `Fork` 项目进行修改，使用 `GitHub Actions` 功能进行云编译固件即可

## 配置

- 该项目 `OpenWrt` 配置使用本地环境使用 "make menuconfig" 进行生成，如有其他需求自行配置，或将 `GitHub Actions` 的 SSH 功能打开

## 固件

### X86-64
- default（默认生成的配置文件）
- default-ipv6 （默认设置+IPv6支持）
- div（自定义固件，本人自己使用的）
    - 使用 default-ipv6 配置修改
    - 移除 `luci-app-adbyby-plus`（广告屏蔽大师Plus +） 插件
    - 移除 `luci-app-unblockmusic`（解锁网易云灰色歌曲） 插件
    - 添加 `luci-app-adguardhome`（AdGuard home广告过滤） 插件
    - 添加 `luci-app-unblockneteasemusic`（解除网易云音乐播放限制） 插件
    