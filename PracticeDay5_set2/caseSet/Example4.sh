#!/bin/bash -x
echo "select operation to perform:"
echo "1:feet to inch"
echo "2:feet to meter"
echo "3:inch to feet"
echo "4:meter to feet"
read -p "Enter:" option
case $option in 1)
	read -p "enter length in feet:" feet
	inches=$(( $feet * 12 ))
	echo "length in inches : $inches"
	;;
2)
	read -p "enter length in feet;" feet
	meter=`echo $feet 0.305 | awk '{print $1*$2}'`
	echo "length in meters : $meter"
	;;
3)
	read -p "enter length in inches:" inch
	feet=$(( $inch / 12 ))
	echo "length in feets: $feet"
	;;
4)
	read -p "enter length in meters:" meter
	feet=`echo $meter 3.28 | awk '{print $1*$2}'`
	echo "length in feets : $feet"
	;;
*)
	echo "wrong input"
	;;
esac
