#!/bin/bash

while true
do

random_int=0
while [ "$random_int" -le 10000 ]
do
  random_int=$RANDOM
done
DOW=$(date +"%A")

tweet=$RANDOM
if [ $DOW == Friday ]
then
let "tweet %= 4"
else
let "tweet %= 3"
fi

case $tweet in
0)ttytter -status="$random_int: Donate to us!. This will go towards devices, website costs, etc. http://bit.ly/KnElLU"; sleep 5400;;
1)ttytter -status="$random_int: ViciousAOSP is open source! Come check out the source! http://bit.ly/Jji9Q8 "; sleep 5400;;
2)ttytter -status="$random_int: Hop on IRC with us. http://bit.ly/IO0BLP "; sleep 5400;;
3)ttytter -status="$random_int:ViciousAOSP officially supports the GSM and VZW Nexus AND all versions of the Nexus S!"; sleep 5400;;
4)ttytter -status="$random_int: #FF Team Vicious. @paullie_vicious, @sonicxml1, @jdkoreclipse, @ViciousBot"; sleep 5400;;
esac

done
