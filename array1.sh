#!/bin/bash

x=100
y=999

range=$((y-x+1))

for((i=1;i<=10;i++))
do

   array[i]=$(($(($RANDOM%$range))+x))
    echo "${array[i]}"   

done


largest=${array[0]}
secondlargest='unset'

for((i=1;i<=10;i++))
do

  if [[ ${array[i]} > $largest ]]
  then
    secondlargest=$largest
    largest=${array[i]}

  elif [[ ${array[i]} != $largest ]] && [[ ${array[i]} > $secondlargest ]]
  then
    secondlargest=${array[i]}

  fi

done

echo "secondlargest = $secondlargest"


smallest=${array[0]}
secondsmallest='unset'

for((i=1;i<=10;i++))
do
    if [[ ${array[i]} < $smallest ]]
    then
        secondsmallest=$smallest
        smallest=${array[i]}

    elif [[ ${array[i]} != $smallest ]] && [[ ${array[i]} < $secondsmallest ]]
    then
         secondsmallest=${array[i]}
     fi

done

echo "secondsmallest = $secondsmallest"

