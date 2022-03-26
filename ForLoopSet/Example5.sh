#!/bin/bash -x
num=$1
result=1
for (( c=1; c<=num; c++ ))
do 
	result=$(( result * c ))
done
echo $result
