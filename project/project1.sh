#! /bin/bash
a=$(df --output=avail | head -n 2 | tail -1 | cut -d# -f2)
a=$(expr $a / 1000000)
echo "Total Space on Disk: " $a "GB"