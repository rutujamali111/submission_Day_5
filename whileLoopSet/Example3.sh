#!/bin/bash -x
count_head=0
count_tail=0
while :
do
	option=$(( RANDOM%2 ))
	if [ $option -eq 1 ]
	then
	count_head=$(( $count_head + 1 ))
	else
	count_tail=$(( $count_tail + 1 ))
	fi
	if ([ $count_head -eq 11 ] || [ $count_tail -eq 11 ])
	then
	echo "game ends..."
	break
	fi
done
