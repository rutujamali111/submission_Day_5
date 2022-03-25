#!/bin/bash -x
number=$1
case $number in 1)
	echo "unit"
	;;
10)
	echo "tens"
	;;
100)
	echo "hundred"
	;;
1000)
	echo "Tousand"
	;;
*)
	echo "Not from this series"
	;;
esac
