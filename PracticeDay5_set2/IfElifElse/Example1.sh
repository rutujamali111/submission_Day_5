#!/bin/bash/ -x
read -p "Enter a single digit :" number
if [ $number == 0 ]
then 
	echo "Zero"
elif [ $number == 1 ]
then
	echo "One"
elif [ $number == 2 ]
then
	echo "Two"
elif [ $number == 3 ]
then
	echo "Three"
elif [ $number == 4 ]
then
	echo "four"
elif [ $number == 5 ]
then
	echo "Five"
elif [ $number == 6 ]
then
	echo "six"
elif [ $number == 7 ]
then 
	echo "seven"
elif [ $number == 8 ]
then
	echo "eight"
elif [ $number == 9 ]
then
	echo "nine"
else
	echo "Not a single digit "
fi
