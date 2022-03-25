#!/bin/bash -x
#Use random to get Dice Number between 1 to 6
number=$(( ( RANDOM%6 ) + 1 ));
echo $number;
