#!/bin/bash -x
day=$1
case $day in 1)
	echo "monday"
	;;
2)
	echo "Tuesday"
	;;
3)
	echo "wednesday"
	;;
4)
	echo "Thursday"
	;;
5)
	echo "friday"
	;;
6)
	echo "saturday"
	;;
7)
	echo "sunday"
	;;
*)
	echo "wrong input"
	;;
esac

