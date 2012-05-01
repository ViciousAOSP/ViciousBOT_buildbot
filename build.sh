#!/bin/sh

#repo sync for good measure
cd ~/android/system/
repo sync -j36

#Run the Builds
cd ~/buildbot
bash toro.sh
bash toroplus.sh
bash maguro.sh
bash crespo.sh
bash crespo4g.sh
