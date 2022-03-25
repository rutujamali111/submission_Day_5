#!/bin/bash -x
a=$1
b=$2
c=$3
result1=$(( $a + $b * $c ))
result2=$(( $a % $b + $c ))
result3=$(( $c * $a / $b ))
result4=$(( $a * $b + $c ))
if ([ $a -ge $b ] && [ $a -ge $c ])
then 
	echo "a is max value: "
elif ([ $b -ge $a ] && [ $b -ge $c ])
then 
	echo "b is max value ;"
else
	echo "C is max value :"
fi
if ([ $a -le $b ] && [ $a -le $c ])
then
	echo "a is min value:"
elif ([ $b -le $a ] && [ $b -le $a ])
then
	echo "b is min value:"
else
	echo "c is min value:"
fi
