#!/bin/sh

DATE=$(date +"%m-%d-%y")

cd ~/android/system
. build/envsetup.sh
lunch 4

rm ~/android/system/out/target/product/crespo4g/system/build.prop

make otapackage -j36

cp ViciousAOSP_crespo4g_nightly_$DATE.zip /var/www/jdkoreclipse/crespo4g/ViciousAOSP_crespo4g_nightly_$DATE.zip
ttytter -status="New Crespo4G ViciousAOSP nightly for $DATE available at http://rombot.droidhive.com/jdkoreclipse/crespo"

exit
