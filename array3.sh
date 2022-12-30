#!/bin/bash

echo "Enter number"
read num

for((count=2;count<=num;count++))
do
    while (( $num%$count==0 ))
    do
      
      num=$(($num/$count))
      array[i]=$count
      ((i++))
 
   done
done
echo "Prime factor :- ${array[@]}"




