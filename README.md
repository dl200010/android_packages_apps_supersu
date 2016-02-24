This will install Busybox for init.d script support and SuperSU for root.
This does not use "install-recovery.sh" in any way, but they are included if you want to go that way
Currently this only supports arm64 since I only have that.
Once I pull out the other phone I have to test arm, then that will be added.





Instructions:

Use "PRODUCT_PACKAGES += SuperSU" in device make file (i.e. aosp_angler.mk)

Use the example Busybox/android_filesystem_config.h to give the directories proper permissions when building/creating img files.

Must delete folder "system/extras/su" from standard AOSP tree

Must add this to init.(DEVICE).rc in device/(MANUFACTURER)/(DEVICE) OR system/core/rootdir/init.rc:
#------------------------------------------------------------------#
service initd /system/bin/logwrapper /system/xbin/busybox run-parts /system/etc/init.d/
    class main
    user root
    group root
    oneshot
#------------------------------------------------------------------#





If you like this, than please buy SuperSU Pro and BusyBox Pro! I did.




SuperUS Free by Chainfire
#------------------------------------------------------------------#
XDA Profile
http://forum.xda-developers.com/member.php?u=631273

XDA Thread
http://forum.xda-developers.com/showthread.php?t=1538053

Google Play free SuperSU: https://play.google.com/store/apps/details?id=eu.chainfire.supersu&hl=en
Google Play paid SuperSU Pro: https://play.google.com/store/apps/details?id=eu.chainfire.supersu.pro&hl=en

Update Links
TWRP / FlashFire installable ZIP:
Stable: http://download.chainfire.eu/supersu-stable
Beta: http://download.chainfire.eu/supersu-beta
Latest: http://download.chainfire.eu/supersu
#------------------------------------------------------------------#


Busybox compiled by Stericson
#------------------------------------------------------------------#
XDA Profile
http://forum.xda-developers.com/member.php?u=1335872

Google Play free BusyBox: https://play.google.com/store/apps/details?id=stericson.busybox&hl=en
Google Play paid BusyBox Pro: https://play.google.com/store/apps/details?id=stericson.busybox.donate&hl=en

Featured on the BusyBox website at:http://busybox.net/products.html
The BusyBox source code can be found here: http://git.busybox.net/busybox/
#------------------------------------------------------------------#



