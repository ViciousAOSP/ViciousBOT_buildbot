#!/bin/sh

DATE=$(date +"%m-%d-%y")

cd ~/android/system
. build/envsetup.sh
lunch 2

rm ~/android/system/out/target/product/toroplus/system/build.prop

make otapackage -j36

cp ViciousAOSP_toroplus_nightly_$DATE.zip /var/www/jdkoreclipse/toroplus/ViciousAOSP_toroplus_nightly_$DATE.zip
ttytter -status="New ToroPLUS ViciousAOSP nightly for $DATE available at http://rombot.droidhive.com/jdkoreclipse/toroplus"

exit
