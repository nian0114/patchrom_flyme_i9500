#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/mmcblk0p10:8075264:644e64759f605de057e3b4fd12274b3507185228; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/mmcblk0p9:7286784:fa13262f33b1abbad7a1aebb544bd65732c28ad6 EMMC:/dev/block/mmcblk0p10 644e64759f605de057e3b4fd12274b3507185228 8075264 fa13262f33b1abbad7a1aebb544bd65732c28ad6:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
