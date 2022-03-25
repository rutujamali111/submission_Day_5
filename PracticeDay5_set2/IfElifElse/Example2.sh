#!/bin/bash -x
read -p "Enter a day:" day
if [ $day == 1 ]
then 
	echo "monday"
elif [ $day == 2 ]
then
	echo "tuesday"
elif [ $day == 3 ]
then 
	echo "Wednesday"
elif [ $day == 4 ]
then
	echo "Thursday"
elif [ $day == 5 ]
then
	echo "Friday"
elif [ $day == 6 ]
then
	echo "saturday"
elif [ $day == 7 ]
then
	echo "Sunday"
else
	echo "wrong Input"
fi
