#!/bin/bash -x
n=$1
sum=0
for (( c=1; c<=$n; c++ ))
do 
	partial_sum=`echo 1 $c | awk '{print $1/$2}'`
	sum=`echo $sum $partial_sum | awk '{print $1+$2}'`
done
echo $sum
