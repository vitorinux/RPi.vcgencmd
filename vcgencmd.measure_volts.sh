#!/bin/bash
for id in core sdram_c sdram_i sdram_p ;
do echo -e "$id:\t$(vcgencmd measure_volts $id)" ;
done
# core:   volt=1.20V
# sdram_c:        volt=1.20V
# sdram_i:        volt=1.20V
# sdram_p:        volt=1.23V