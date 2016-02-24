#!/system/bin/sh
export PATH=${PATH}:/system/bin:/system/xbin
logwrapper busybox run-parts /system/etc/init.d/
