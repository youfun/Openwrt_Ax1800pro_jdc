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




#替换为新版本golang
#rm -rf feeds/packages/lang/golang
#git clone https://github.com/kenzok8/golang feeds/packages/lang/golang
#./scripts/feeds install -a -f



sed -i  'openwrt_base  https://downloads.immortalwrt.org/releases/23.05.0/packages/aarch64_cortex-a53/base/' feeds.conf.default

./scripts/feeds update 
./scripts/feeds install 
