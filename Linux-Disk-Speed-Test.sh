#!/bin/bash
DISKS="/dev/sda /dev/sdb /dev/sdc"
for HD in $DISKS ; do
  hdparm -I ${HD} | grep SATA
  for i in 1 2 3; do hdparm -tT ${HD}; done
done
