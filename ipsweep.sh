#!/bin/bash

if[ "$1" == "" ]
then
echo "Enter IP, Syntax is ./ipsweep.sh 192.168.1(or your IP(check using `ifconfig`))"

else
for ip in `seq 1 254`; do
ping -c 1 $1.$ip | grep "64 bytes" | cut -d " " -f 4 | tr -d ":" &
done
fi
