echo '修改主机名'
sed -i "s/hostname='OpenWrt'/hostname='JENET'/g" ./package/base-files/files/bin/config_generate
echo '修改dts'
rm -rf target/linux/rockchip/files/arch/arm64/boot/dts/rockchip/rk3568-opc-h69k.dts
cp -f $GITHUB_WORKSPACE/configs/lede/jenet-lu.dts target/linux/rockchip/files/arch/arm64/boot/dts/rockchip/rk3568-opc-h69k.dts
