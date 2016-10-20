#!/system/bin/sh
if [ -f /system/etc/recovery-transform.sh ]; then
  exec sh /system/etc/recovery-transform.sh 13150208 6228164165c1766e430ab814fb360b09bcd3ef59 10606592 be3b12cfec324efce355003b72d7a59b577279d8
fi

if ! applypatch -c EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery:13150208:6228164165c1766e430ab814fb360b09bcd3ef59; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/msm_sdcc.1/by-name/boot:10606592:be3b12cfec324efce355003b72d7a59b577279d8 EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery 6228164165c1766e430ab814fb360b09bcd3ef59 13150208 be3b12cfec324efce355003b72d7a59b577279d8:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
