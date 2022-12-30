#!/bin/bash

x=100

y=999


range=$((y-x+1))
RANDOM=$$

for((i=1;i<=10;i++))
do

   array[i]=$(($(($RANDOM%$range))+x))

done
echo "${array[@]}"

IFS=$'\n' sorted=($(sort <<<"${array[*]}"))
echo "${sorted[@]}"

echo "${sorted[1]}"
echo "${sorted[8]}"


