#!/bin/bash -x
#Leap year
read -p "Enter year : " year
echo $year
if ([ $(( $year%4 )) -eq 0 ])
then
	if ([ $(( $year%100 )) -eq 0 ])
	then
		if ([ $(( $year%400 )) -eq 0 ])
		then
		echo "Leap year"
		else
		echo "Regular year"	
		fi	
	else
		echo "Leap year"
	fi
else
	echo "Regular year"
fi

