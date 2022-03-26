#!/bin/bash -x
num=$1
boolean=1
for (( i=2; i<$num; i++ ))
do
	if [ $(( $num%$i )) -eq 0 ]
	then
	boolean=0
	break
	fi
done
if [ $boolean -eq 1 ]
then 
	echo "prime number"
else
	echo "not prime number"
fi
