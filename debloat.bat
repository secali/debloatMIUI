
adb shell pm disable-user --user 0 com.miui.msa.global
adb shell pm disable-user --user 0 com.android.printspooler
adb shell pm disable-user --user 0 com.miui.videoplayer
adb shell pm disable-user --user 0 com.miui.hybrid
adb shell pm disable-user --user 0 com.miui.player
adb shell pm disable-user --user 0 com.mi.globalbrowser
adb shell pm disable-user --user 0 com.android.apps.tag
adb shell pm disable-user --user 0 com.android.cellbroadcastreceiver
adb shell pm disable-user --user 0 com.facebook.appmanager
adb shell pm disable-user --user 0 com.android.egg
adb shell pm disable-user --user 0 com.xiaomi.payment
adb shell pm disable-user --user 0 com.miui.notes
adb shell pm disable-user --user 0 com.google.ar.lens
adb shell pm disable-user --user 0 com.miui.miservice
adb shell pm disable-user --user 0 com.xiaomi.mipicks
adb shell pm disable-user --user 0 com.google.android.marvin.talkback
adb shell pm disable-user --user 0 com.google.android.projection.gearhead
adb shell pm disable-user --user 0 com.miui.compass
adb shell pm disable-user --user 0 com.android.bips
adb shell pm disable-user --user 0 com.android.wallpaper.livepicker
adb shell pm disable-user --user 0 com.android.browser
adb shell pm disable-user --user 0 com.miui.mishare.connectivity
adb shell pm disable-user --user 0 com.miui.micloudsync
adb shell pm disable-user --user 0 com.xiaomi.scanner
adb shell pm disable-user --user 0 com.xiaomi.midrop
adb shell pm disable-user --user 0 com.android.dreams.phototable
adb shell pm disable-user --user 0 com.facebook.system
adb shell pm disable-user --user 0 com.miui.cloudbackup
adb shell pm disable-user --user 0 com.android.chrome
adb shell pm disable-user --user 0 com.xiaomi.mirecycle
adb shell pm disable-user --user 0 com.xiaomi.calendar
adb shell pm disable-user --user 0 com.mipay.wallet.id
adb shell pm disable-user --user 0 com.xiaomi.simactivate.service
adb shell pm disable-user --user 0 com.facebook.services
adb shell pm disable-user --user 0 com.mipay.wallet.in
adb shell pm disable-user --user 0 com.miui.hybrid.accessory
adb shell pm disable-user --user 0 com.android.bookmarkprovider
adb shell pm disable-user --user 0 com.miui.gallery
adb shell pm disable-user --user 0 com.xiaomi.glgm
adb shell pm disable-user --user 0 com.google.android.gms.location.history
adb shell pm disable-user --user 0 com.miui.cloudservice
adb shell pm disable-user --user 0 com.miui.yellowpage

#IS NOT RECOMMENDED TO REMOVE IT
#adb shell pm disable-user --user 0 com.xiaomi.finddevice

adb shell pm disable-user --user 0 com.bsp.catchlog
adb shell pm disable-user --user 0 com.miui.touchassistant
adb shell pm disable-user --user 0 com.miui.bugreport
adb shell pm disable-user --user 0 com.miui.backup
adb shell pm disable-user --user 0 com.miui.huanji
adb shell pm disable-user --user 0 com.tencent.soter.soterserver
adb shell pm disable-user --user 0 com.mi.android.globalminusscreen
adb shell pm disable-user --user 0 com.miui.screenrecorder
adb shell pm disable-user --user 0 com.android.traceur
adb shell pm disable-user --user 0 com.android.email
adb shell pm disable-user --user 0 com.mi.health
adb shell pm disable-user --user 0 com.miui.video
adb shell pm disable-user --user 0 com.miui.fm
adb shell pm disable-user --user 0 com.miui.fmservice
adb shell pm disable-user --user 0 com.android.calendar
adb shell pm disable-user --user 0 com.android.quicksearchbox
adb shell pm disable-user --user 0 com.xiaomi.joyose
adb shell pm disable-user --user 0 com.mfashiongallery.emag
adb shell pm disable-user --user 0 com.miui.miwallpaper.earth
adb shell pm disable-user --user 0 com.miui.miwallpaper.mars
adb shell pm disable-user --user 0 com.miui.nextpay
adb shell pm disable-user --user 0 com.miui.newmidrive
adb shell pm disable-user --user 0 com.miui.accessibility
adb shell pm disable-user --user 0 com.miui.personalassistant
adb shell pm disable-user --user 0 com.google.android.apps.tachyon
adb shell pm disable-user --user 0 com.google.android.videos
adb shell pm disable-user --user 0 com.google.android.music
adb shell pm disable-user --user 0 com.google.android.feedback
adb shell pm disable-user --user 0 com.miui.phrase
adb shell pm disable-user --user 0 com.miui.audiomonitor
adb shell pm disable-user --user 0 com.miui.hybrid


#REMOVE GALLERY (YOU CAN USE PHOTOS) AND APP STORE FROM XIAOMI
adb shell pm uninstall --user 0 com.miui.gallery
adb shell pm uninstall --user 0 com.xiaomi.mipicks


echo IF YOU DO NOT WANT TO REPLACE SYSTEM GESTURE BY FLUID GESTURE, CLOSE THE SCRIPT

PAUSE
#GESTURES WILL BE REPLACED BY FLUID GESTURE APK
adb shell pm disable-user --user 0 com.google.android.printservice.recommendation
adb shell pm disable-user --user 0 com.android.internal.systemui.navbar.gestural
adb shell pm disable-user --user 0 com.android.internal.systemui.navbar.gestural_narrow_back
adb shell pm disable-user --user 0 com.android.internal.systemui.navbar.gestural_extra_wide_back
adb shell pm disable-user --user 0 com.android.internal.systemui.navbar.gestural_wide_back
adb shell pm disable-user --user 0 com.android.internal.systemui.navbar.twobutton
adb shell pm disable-user --user 0 com.android.systemui.gesture.line.overlay
#----------------------------------------------------
#APP FLUID GESTURE
adb install fluid_gesture.apk
#----------------------------------------------------


#FORCE DEODEX, SOMETIMES USEFUL FOR BATTERY STUFF
echo WAIT ARROUND 5-10 MIN
adb shell cmd package bg-dexopt-job

pause
