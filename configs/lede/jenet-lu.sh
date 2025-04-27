echo '修改主机名'
sed -i "s/hostname='OpenWrt'/hostname='JENET'/g" ./package/base-files/files/bin/config_generate
