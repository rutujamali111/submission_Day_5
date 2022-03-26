#!/bin/bash -x
read -p "think any number between 1 to 100" magic_number
min=1
max=100
mid=$(( $(( $min + $max )) / 2 ))
while [ $min -le $max ]
do
	if [ $mid -lt $magic_number ]
	then
		min=$(( $mid + 1 ))
	elif [ $mid -eq $magic_number ]
	then
		echo "you think number $mid "
		break
	else
		max=$(( $mid - 1 ))
	fi
	mid=$(( $(( $min + $max )) / 2 ))
done
if [ $min -gt $max ]
then
	echo "You chosen number beyond limit "
fi
