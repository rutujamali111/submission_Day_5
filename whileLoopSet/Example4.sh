#!/bin/bash -x
rupees=100
bet_count=0
won_count=0
while [ $rupees -le 200 ]
do 
	bet_count=$(( $bet_count + 1 ))
	rupees=$(( $rupees - 1 ))
	bet=$(( RANDOM%2 ))
	if [ $bet -eq 1 ]
	then
	won_count=$(( $won_count + 1 ))
	rupees=$(( $rupees + 2 ))
	fi
done
echo "Glambler play bets $bet_count and won bets $won_count"
