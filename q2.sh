#!/bin/bash
touch extra.txt
chmod +x extra.txt
cat /etc/shells > extra.txt
while read p
do
awk '$p=="usr" { FS = "/" } ; { print $4 }' extra.txt
done
#echo $p

