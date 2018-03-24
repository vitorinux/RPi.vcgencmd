#!/bin/bash
for src in arm core h264 isp v3d uart pwm emmc pixel vec hdmi dpi ; 
do echo -e "$src:\t$(vcgencmd measure_clock $src)" ;
done

# arm:    frequency(45)=700000000
# core:   frequency(1)=250000000
# h264:   frequency(28)=0
# isp:    frequency(42)=250000000
# v3d:    frequency(43)=250000000
# uart:   frequency(22)=3000000
# pwm:    frequency(25)=0
# emmc:   frequency(47)=100000000
# pixel:  frequency(29)=154000000
# vec:    frequency(10)=0
# hdmi:   frequency(9)=163682000
# dpi:    frequency(4)=0

