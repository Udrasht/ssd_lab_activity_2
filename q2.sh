#!/bin/bash
touch extra.txt
#chmod +x extra.txt
cat /etc/shells >> extra.txt

awk ' BEGIN{ FS="/" };
{if ($2=="usr") print $4}' extra.txt

