#!/bin/bash
# Modify default IP
sed -i 's/192.168.1.1/192.168.5.1/g' openwrt/package/base-files/files/bin/config_generate

# Clear the login password
sed -i 's/$1$V4UetPzk$CYXluq4wUazHjmCDBCqXF.//g' openwrt/package/lean/default-settings/files/zzz-default-settings

# Change linux kernel to 5.15
sed -i 's/5.10/5.15/g' openwrt/target/linux/x86/Makefile

# Change distrib description
sed -i "s/OpenWrt /OpenWrt Git Revision $(cd openwrt && git rev-parse --short HEAD) Built by Demogorgon314 on $(date +%Y.%m.%d)/g" openwrt/package/lean/default-settings/files/zzz-default-settings