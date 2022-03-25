#!/bin/bash -x
day=$1
month=$2
if ([ $month -lt 3 ] || [ $month -gt 6 ])
then 
	echo false
else
 	if ([ $month -eq 3 ] && [ $day -le 20 ] || [ $month -eq 6 ] && [ $day -ge 20 ])
	then
		echo false
	else
		echo true
	fi
fi

