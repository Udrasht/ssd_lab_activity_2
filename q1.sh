#!/bin/bash

n=0
while read p
do
n=$(( n+1 ))
done < $1
num=$(( n/2 ))
if [[ n%2 -eq 1 ]]
then
num=$(( num+1 ))
fi
m=1
while read p
do
if [[ m -eq num ]]
then
echo $p
fi
m=$(( m+1 ))
done < $1



