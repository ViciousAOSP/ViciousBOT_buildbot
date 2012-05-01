#!/bin/sh

DATE=$(date +"%m-%d-%y")

cd ~/android/system
. build/envsetup.sh
lunch 3

rm ~/android/system/out/target/product/crespo/system/build.prop

make otapackage -j36

cd ~/android/system/out/target/product/crespo/

cp ViciousAOSP_crespo_nightly_$DATE.zip /var/www/jdkoreclipse/crespo/ViciousAOSP_crespo_nightly_$DATE.zip
ttytter -status="New Crespo ViciousAOSP nightly for $DATE available at http://rombot.droidhive.com/jdkoreclipse/crespo"

exit

