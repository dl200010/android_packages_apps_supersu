This will install Busybox for init.d script support and SuperSU for root.
Currently this only supports arm64 since I only have that.
Once I pull out the other phone I have to test arm, then that will be added.





Instructions:

Use "PRODUCT_PACKAGES += SuperSU" in device make file (i.e. aosp_angler.mk)

Use the example android_filesystem_config_h to give the directories and files proper permissions when building/creating img files.
Add to android_filesystem_config.h in your device directory.

Must delete folder "system/extras/su" from AOSP tree

Must add this to init.rc:
#------------------------------------------------------------------#
service run_root /system/etc/install-busybox.sh
    class main
    user root
    oneshot
#------------------------------------------------------------------#

You may be asked to update the SU binary once booted to android, do it.



If you like this, than please buy SuperSU Pro and BusyBox Pro! I did.




SuperSU Free by Chainfire (2.71)
#------------------------------------------------------------------#
XDA Profile
http://forum.xda-developers.com/member.php?u=631273

XDA Thread
http://forum.xda-developers.com/showthread.php?t=1538053

Google Play free SuperSU: https://play.google.com/store/apps/details?id=eu.chainfire.supersu&hl=en
Google Play paid SuperSU Pro (Still need free version, this is just a license): https://play.google.com/store/apps/details?id=eu.chainfire.supersu.pro&hl=en

Update Links
TWRP / FlashFire installable ZIP:
Stable: http://download.chainfire.eu/supersu-stable
Beta: http://download.chainfire.eu/supersu-beta
Latest: http://download.chainfire.eu/supersu
#------------------------------------------------------------------#


Busybox compiled by Stericson (1.24.1)
#------------------------------------------------------------------#
XDA Profile
http://forum.xda-developers.com/member.php?u=1335872

Google Play free BusyBox: https://play.google.com/store/apps/details?id=stericson.busybox&hl=en
Google Play paid BusyBox Pro: https://play.google.com/store/apps/details?id=stericson.busybox.donate&hl=en

Featured on the BusyBox website at: http://busybox.net/products.html
The BusyBox source code can be found here: http://git.busybox.net/busybox/
#------------------------------------------------------------------#



