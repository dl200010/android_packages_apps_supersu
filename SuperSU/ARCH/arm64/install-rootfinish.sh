#!/sbin/sh

rm /system/bin/install-recovery.sh
rm /system/bin/app_process
ln -s /system/xbin/daemonsu /system/bin/app_process
mv /system/bin/app_process64 /system/bin/app_process64_original
ln -s /system/xbin/daemonsu /system/bin/app_process64
cp /system/bin/app_process64_original /system/bin/app_process_init
chmod 0755 /system/bin/app_process_init

