#!/bin/sh

DATE=$(date +"%m-%d-%y")

cd ~/android/system
. build/envsetup.sh
lunch 1

rm ~/android/system/out/target/product/toro/system/build.prop

make otapackage -j36

cp ViciousAOSP_toro_nightly_$DATE.zip /var/www/jdkoreclipse/toro/ViciousAOSP_toro_nightly_$DATE.zip
ttytter -status="New Toro ViciousAOSP nightly for $DATE available at http://rombot.droidhive.com/jdkoreclipse/toro"

exit
