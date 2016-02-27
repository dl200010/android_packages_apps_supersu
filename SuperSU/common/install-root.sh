#!/system/bin/sh

if [ ! -f "/system/etc/install-recovery.sh" ]; then
    /system/xbin/daemonsu --auto-daemon &
    export PATH=${PATH}:/system/bin:/system/xbin
    logwrapper busybox run-parts /system/etc/init.d/
fi