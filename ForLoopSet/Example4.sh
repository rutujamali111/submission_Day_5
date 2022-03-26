#!/bin/bash 
input=$1
output=$2
for (( i=$input; i<=$output; i++ ))
do	
	boolean=1
	for (( j=2; j<$i; j++ ))
	do
	if [ $(( $i%$j )) -eq 0 ]
	then
		boolean=0
		break
	fi
	done
if [ $boolean -eq 1 ]
then 
	echo "$i "
fi
done

