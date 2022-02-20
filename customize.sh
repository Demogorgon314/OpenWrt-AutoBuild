#!/bin/bash
# 1. Modify default IP
sed -i 's/192.168.1.1/192.168.5.1/g' openwrt/package/base-files/files/bin/config_generate

# 2. Clear the login password
sed -i 's/$1$V4UetPzk$CYXluq4wUazHjmCDBCqXF.//g' openwrt/package/lean/default-settings/files/zzz-default-settings

# 3. Change linux kernel to 5.15
sed -i 's/5.10/5.15/g' openwrt/target/linux/x86/Makefile