#!/bin/bash -x
#Finding min max number
max=100
min=999
for (( c=0;c<5;c++ ))
do
	value=$(( (RANDOM%899 ) + 100 ));
	if [ $value -ge $max ]
	then
		max=$value
	fi	
	if [ $value -le $min ]
	then
		min=$value
	fi
done
echo $max
echo $min


