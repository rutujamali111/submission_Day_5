#!/bin/bash -x
#Write a pgm that reads 5 Random 2 Digit values,then find their sum and average
Sum=0
for (( c=0;c<5;c++ ))
do 
	
	value=$(( ( RANDOM%89 ) + 10 ));
	Sum=$((Sum + value));
done
echo $Sum
echo "Average is: " `expr $Sum / 5`
