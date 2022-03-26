#!/bin/bash -x
num=$1
for (( i=2; $(( i*i ))<$num; i++ ))
do
	while  [ $(( $num%$i )) -eq 0 ]
	do
	num=$(( num/$i ))
	echo $i
	done
done
if [ $num > 2 ]
then 
	echo $num
fi 
