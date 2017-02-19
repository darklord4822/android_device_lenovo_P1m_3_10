$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/lenovo/P1m/P1m-vendor.mk)

# Off ninja
USE_NINJA=false

DEVICE_PACKAGE_OVERLAYS += device/lenovo/P1m/overlay

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal xhdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi

TARGET_OTA_ASSERT_DEVICE := Lenovo P1ma40
TARGET_PROVIDES_INIT_RC := true

PRODUCT_COPY_FILES += \
    device/lenovo/P1m/rootdir/init.rc:root/init.rc \
    device/lenovo/P1m/rootdir/init.target.rc:root/init.target.rc \
    device/lenovo/P1m/rootdir/init.mt6735.rc:root/init.mt6735.rc \
    device/lenovo/P1m/rootdir/init.ssd.rc:root/init.ssd.rc \
    device/lenovo/P1m/rootdir/init.xlog.rc:root/init.xlog.rc \
    device/lenovo/P1m/rootdir/init.usb.rc:root/init.usb.rc \
    device/lenovo/P1m/rootdir/init.mt6735.usb.rc:root/init.mt6735.usb.rc \
    device/lenovo/P1m/rootdir/init.aee.rc:root/init.aee.rc \
    device/lenovo/P1m/rootdir/init.project.rc:root/init.project.rc \
    device/lenovo/P1m/rootdir/init.modem.rc:root/init.modem.rc \
    device/lenovo/P1m/rootdir/init.trace.rc:root/init.trace.rc \
    device/lenovo/P1m/rootdir/fstab.mt6735:root/fstab.mt6735 \
    device/lenovo/P1m/rootdir/fstab.swap:root/fstab.swap \
    device/lenovo/P1m/rootdir/ueventd.rc:root/ueventd.rc \
    device/lenovo/P1m/etc/media_codecs.xml:system/etc/media_codecs.xml \
    device/lenovo/P1m/etc/init/audioserver.rc:system/etc/init/audioserver.rc \
    device/lenovo/P1m/etc/init/mediacodec.rc:system/etc/init/mediacodec.rc \
    device/lenovo/P1m/etc/init/cameraserver.rc:system/etc/init/cameraserver.rc \
    device/lenovo/P1m/etc/init/rild.rc:system/etc/init/rild.rc \
    device/lenovo/P1m/media_profiles.xml:system/etc/media_profiles.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video_le.xml:system/etc/media_codecs_google_video_le.xml \
    frameworks/native/data/etc/android.software.app_widgets.xml:system/etc/permissions/android.software.app_widgets.xml \
    frameworks/native/data/etc/android.hardware.audio.output.xml:system/etc/permissions/android.hardware.audio.output.xml \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.faketouch.xml:system/etc/permissions/android.hardware.faketouch.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \

# Audio componets from source
PRODUCT_PACKAGES += \
    audio.usb.default \
    audio.r_submix.default

# RIL
PRODUCT_PACKAGES += \
    gsm0710muxd

PRODUCT_PACKAGES += \
    Torch \
    libxlog \
    libmtk_symbols \
    libperfservicenative \
    libcurl

PRODUCT_PACKAGES += power.mt6735

# FMRadio
PRODUCT_PACKAGES += \
    libfmjni \
    FMRadio

# Wifi
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    libwpa_client \
    hostapd \
    dhcpcd.conf \
    wpa_supplicant \
    wpa_supplicant.conf

PRODUCT_COPY_FILES += \
    device/lenovo/P1m/rootdir/etc/hostapd_default.conf:system/etc/hostapd/hostapd_default.conf \

# Audio components from source
PRODUCT_PACKAGES += \
    MtkCamera libDocVfbEngineLib_m81 libpanorama

#PRODUCT_PACKAGES += stlport_shared
PRODUCT_COPY_FILES += \
    prebuilts/ndk/current/sources/cxx-stl/stlport/libs/arm64-v8a/libstlport_shared.so:system/lib64/libstlport.so \
    prebuilts/ndk/current/sources/cxx-stl/stlport/libs/armeabi-v7a/libstlport_shared.so:system/lib/libstlport.so

$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# These additionals go to /default.prop
ADDITIONAL_DEFAULT_PROPERTIES += ro.secure=0 \
ro.allow.mock.location=1 \
ro.debuggable=1 \
ro.adb.secure=0 \
persist.service.acm.enable=0 \
persist.sys.usb.config=mtp \
ro.mount.fs=EXT4 \
debug.hwui.render_dirty_regions=false \
ro.sf.lcd_density=320 \
persist.radio.multisim.config=dsds \
ro.mtk_lte_support=1 \
ro.telephony.ril_class=MT6735 \
ro.telephony.ril.config=fakeiccid \
ro.telephony.sim.count=2 \
persist.gemini.sim_num=2 \
ril.current.share_modem=2 \
ro.mtk_gps_support=1 \
ro.mtk_agps_app=1 \
persist.debug.xlog.enable=1 \

# These additionals go to /system/build.prop
# ADDITIONAL_BUILD_PROPERTIES += \
# cm.updater.type=plain \
# cm.updater.uri=https://raw.githubusercontent.com/divis1969/update-site/master/updates-14.1.json \


