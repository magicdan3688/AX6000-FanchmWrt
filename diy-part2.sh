#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#
# Copyright (c) 2019-2024 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#

# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate

# Modify default theme
#sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile

# Modify hostname
#sed -i 's/OpenWrt/P3TERX-Router/g' package/base-files/files/bin/config_generate
# 替换红米 AX6000 为大分区布局 (112M)
sed -i 's/<0x5400000 0x2200000>/<0x5400000 0x6600000>/g' target/linux/mediatek/dts/mt7986a-xiaomi-redmi-router-ax6000.dts
sed -i 's/35840/104448/g' target/linux/mediatek/image/filogic.mk
