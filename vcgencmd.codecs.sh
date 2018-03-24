#!/bin/bash
for codec in H264 MPG2 WVC1 MPG4 MJPG WMV9 ;
do echo -e "$codec:\t$(vcgencmd codec_enabled $codec)" ;
done
# H264:   H264=enabled
# MPG2:   MPG2=enabled
# WVC1:   WVC1=enabled
# MPG4:   MPG4=enabled
# MJPG:   MJPG=enabled
# WMV9:   WMV9=enabled