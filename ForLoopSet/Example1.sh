#!/bin/bash 
n=$1
result=1
for (( i=1; i<=$n; i++ ))
do
	result=$(( 2 * $result ))
done

for (( i=1; i<=$result; i++ ))
do
	partial_result=$(( 2 * $i ))
	if [ $partial_result -le $result ]
	then
	echo $partial_result

	fi
done


