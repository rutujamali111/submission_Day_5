#!/bin/bash 
n=$1
i=1
result=1
while [ $result -lt 256 ]
do
	product=1
	for (( j=1; j<=$i; j++ ))
	do
		product=$(( 2*$product ))
	done
echo $product
result=$product
(( i++ ))
done
