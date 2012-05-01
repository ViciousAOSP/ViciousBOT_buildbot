#!/bin/sh

DATE=$(date +"%m-%d-%y")

cd ~/android/system
. build/envsetup.sh
lunch 2

rm ~/android/system/out/target/product/maguro/system/build.prop

make otapackage -j36

cp ViciousAOSP_maguro_nightly_$DATE.zip /var/www/jdkoreclipse/maguro/ViciousAOSP_maguro_nightly_$DATE.zip
ttytter -status="New Maguro ViciousAOSP nightly for $DATE available at http://rombot.droidhive.com/jdkoreclipse/maguro"

exit
